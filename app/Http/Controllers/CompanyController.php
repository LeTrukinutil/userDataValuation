<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class CompanyController extends Controller
{
    public function search(Request $request)
    {
        $query = $request->input('query');
        if (!$query) {
            return back()->withErrors(['query' => 'Veuillez entrer un terme de recherche.']);
        }

        $params = [
            'q' => $query,
            'per_page' => 6, // Nombre de résultats par page
            'page' => $request->input('page', 1), // Page actuelle (par défaut 1)
        ];

        // Appeler l'API
        $response = Http::get('https://recherche-entreprises.api.gouv.fr/search', $params);
    
        // Vérifier si la réponse est réussie
        if ($response->successful()) {
            $results = $response->json();

            // Calcul des pages totales
            $total_results = $results['total_results'] ?? 0;
            $total_pages = ceil($total_results / 6); // Calcul des pages totales

        } else {
            return back()->withErrors(['query' => 'Erreur lors de la recherche.']);
        }

        // Retourner les résultats avec pagination
        return view('results', [
            'results' => $results['results'] ?? [],  // Accéder à 'results' au lieu de 'items'
            'current_page' => $params['page'],
            'total_pages' => $total_pages, // Ne limite plus à 6 pages
            'query' => $query,
            'total_results' => $results['total_results'],
        ]);
    }


    public function show(string $siren){
        
    }
}
