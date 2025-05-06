<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Http;

/**
 * CsvController handles CSV file processing and data enrichment using the French Government Enterprise API.
 * 
 * This controller provides functionality to:
 * - Display CSV upload form with mappable fields
 * - Process uploaded CSV files containing SIREN numbers
 * - Validate CSV structure and SIREN format
 * - Enrich data by fetching additional company information
 * - Generate enhanced CSV output with selected fields
 */

/**
 * Display the CSV upload form with available field mappings.
 * 
 * @return \Illuminate\View\View
 */

/**
 * Process the uploaded CSV file and enrich it with additional company data.
 * 
 * This method:
 * 1. Validates the uploaded CSV file and selected fields
 * 2. Reads and validates the CSV structure (single column of SIREN numbers)
 * 3. For each SIREN, fetches company data from the API
 * 4. Generates an enhanced CSV with requested company information
 * 
 * @param Request $request The HTTP request containing:
 *                        - csv_file: The uploaded CSV file
 *                        - selected_fields: Array of fields to include in output
 * 
 * @return \Symfony\Component\HttpFoundation\BinaryFileResponse
 * @throws \Illuminate\Validation\ValidationException
 */

class CsvController extends Controller
{
    public function show()
    {
        // Association des libellés utilisateur avec les champs techniques
        $csvHeaders = [
            'Nom ou Dénomination sociale' => 'nom_complet',
            'Adresse complète' => 'adresse',
            'Code postal' => 'code_postal',
            'Secteur d\'activité (Code APE)' => 'activite_principale',
            'Taille de l\'entreprise' => 'effectif',
            'Date de création' => 'date_creation',
            'Dirigeant principal' => 'dirigeant',
            'Catégorie d\'entreprise' => 'categorie_entreprise',
            'Forme juridique' => 'nature_juridique',
        ];

        return view('csv.upload', ['csvHeaders' => $csvHeaders]);
    }

    public function dataCompletion(Request $request)
    {
        // Validate file upload with custom messages
        $request->validate([
            'csv_file' => 'required|file|mimes:csv,txt',
            'selected_fields' => 'required|array|min:1'
        ], [
            'csv_file.required' => 'Veuillez sélectionner un fichier CSV',
            'csv_file.file' => 'Le document doit être un fichier',
            'csv_file.mimes' => 'Le fichier doit être au format CSV',
            'selected_fields.required' => 'Veuillez sélectionner au moins un champ à extraire',
            'selected_fields.array' => 'Format de sélection invalide',
            'selected_fields.min' => 'Veuillez sélectionner au moins un champ à extraire'
        ]); //  globalement, je sais pas pourquoi, mais je n'arrive pas à les afficher 

        $originalName = pathinfo($request->file('csv_file')->getClientOriginalName(), PATHINFO_FILENAME);

        // Read CSV file
        $file = $request->file('csv_file');
        $path = $file->getRealPath();
        $data = array_map(function ($line) {
            return str_getcsv($line, ';');
        }, file($path));

        // Validate structure
        if (empty($data)) {
            return back()->withErrors(['message' => 'Le fichier CSV est vide']);
        }

        // Verify single column
        foreach ($data as $index => $row) {
            if (count($row) !== 1) {
                return back()->withErrors(['message' => 'Le fichier CSV doit contenir une seule colonne']);
            }
        }

        // Validate SIREN format for each row (skip header)
        foreach (array_slice($data, 1) as $index => $row) {
            $siren = trim($row[0]);
            if (!preg_match('/^[0-9]{9}$/', $siren)) {
                return back()->withErrors(['message' => 'Le numéro à la ligne ' . ($index + 2) . ' doit contenir exactement 9 chiffres']);
            }
        }


        // Prepare output data with descriptive headers
        $headers = array_merge(['SIREN'], $request->selected_fields);
        $output = [$headers]; // Start with headers as first row

        // Process each row
        foreach (array_slice($data, 1) as $row) {
            $siren = $row[0];
            try {
                // Call API
                $params = ['q' => $siren];
                $response = Http::get('https://recherche-entreprises.api.gouv.fr/search', $params);
                $result = $response->json();

                if (isset($result['results'][0])) {
                    $company = $result['results'][0];
                    $companyData = [$siren]; // Start with SIREN
                    // Add selected fields
                    foreach ($request->selected_fields as $field) {
                        $companyData[] = match ($field) {
                            'nom_complet' => $company['nom_complet'] ?? 'N/A',
                            'adresse' => $company['siege']['adresse'] ?? 'N/A',
                            'code_postal' => $company['siege']['code_postal'] ?? 'N/A',
                            'activite_principale' => $company['siege']['activite_principale'] ?? 'N/A',
                            'effectif' => $company['tranche_effectif_salarie'] ?? 'N/A',
                            'date_creation' => $company['date_creation'] ?? 'N/A',
                            'dirigeant' => !empty($company['dirigeants'])
                                ? ($company['dirigeants'][0]['nom'] ?? '') . ' ' . ($company['dirigeants'][0]['prenoms'] ?? '')
                                : 'N/A',
                            'categorie_entreprise' => $company['categorie_entreprise'] ?? 'N/A',
                            'nature_juridique' => $company['nature_juridique'] ?? 'N/A',
                            default => 'N/A'
                        };
                    }
                    $output[] = $companyData;
                }
            } catch (\Exception $e) {
                Log::error("Erreur pour le SIREN $siren: " . $e->getMessage());
            }
        }

        // Create temporary file
        $tempFile = tempnam(sys_get_temp_dir(), 'csv_');
        $file = fopen($tempFile, 'w');
        foreach ($output as $row) {
            fputcsv($file, $row, ';');
        }
        fclose($file);

        // Return download response
        return response()->download($tempFile, $originalName . '_complete.csv', [
            'Content-Type' => 'text/csv',
        ])->deleteFileAfterSend();
    }
}
