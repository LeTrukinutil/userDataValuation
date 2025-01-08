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

        if ($response->successful()) {
            $results = $response->json();

            $total_results = $results['total_results'] ?? 0;
            $total_pages = ceil($total_results / 6); // Calcul des pages totales
            session(['search_results' => $results['results'] ?? []]);
        } else {
            return back()->withErrors(['query' => 'Erreur lors de la recherche.']);
        }

        // Retourner les résultats avec pagination
        return view('company.results', [
            'results' => $results['results'] ?? [],  // Accéder à 'results' au lieu de 'items'
            'current_page' => $params['page'],
            'total_pages' => $total_pages, // Ne limite plus à 6 pages
            'query' => $query,
            'total_results' => $results['total_results'],
        ]);
    }


    public function show(string $siren)
    {
        $searchResults = session('search_results', []);
        $company = collect($searchResults)->firstWhere('siren', $siren);
        if (!$company) {
            return back()->withErrors(['siren' => 'Entreprise non trouvée.']);
        }
        return view('company.show', ['company' => $company]);
    }
}
