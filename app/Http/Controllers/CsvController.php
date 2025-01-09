<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Http;


class CsvController extends Controller
{
    public function show()
    {
        return view('csv.upload');
    }

    public function dataCompletion(Request $request)
    {
        // Validate file upload
        $request->validate([
            'csv_file' => 'required|file|mimes:csv,txt'
        ]);
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
        // Prepare output data
        $output = [
            ['siren', 'nom_entreprise', 'code_ape', 'adresse', 'dirigeant']
        ];

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

                    // Extract required information
                    $companyData = [
                        $siren,
                        $company['nom_raison_sociale'] ?? 'N/A',
                        $company['siege']['activite_principale'] ?? 'N/A',
                        $company['siege']['adresse'] ?? 'N/A',
                        // Get first dirigeant if available
                        !empty($company['dirigeants']) ?
                            ($company['dirigeants'][0]['nom'] ?? '') . ' ' . ($company['dirigeants'][0]['prenoms'] ?? '')
                            : 'N/A'
                    ];

                    $output[] = $companyData;
                }
            } catch (\Exception $e) {
                Log::error("Erreur pour le SIREN $siren: " . $e->getMessage());
                $output[] = [$siren, 'Erreur', 'Erreur', 'Erreur', 'Erreur'];
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
