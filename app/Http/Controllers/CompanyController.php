<?php

namespace App\Http\Controllers;

use App\Models\ApeNafCode;
use App\Models\Comment;
use App\Models\Company;
use App\Models\CompanyType;
use App\Models\LegalCategory;
use App\Models\SearchHistory;
use App\Models\User;
use App\Models\UserFavouritesCompany;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;

/**
 * CompanyController handles company search and detailed information display.
 * 
 * This controller provides functionality to:
 * - Search companies using the French Government Enterprise API
 * - Display paginated search results
 * - Show detailed company information
 * - Load related data (NAF codes, legal categories, company types)
 * - Handle company comments
 */
class CompanyController extends Controller
{
    /**
     * Search companies based on user input.
     * 
     * This method:
     * 1. Validates the search query
     * 2. Calls the enterprise API with pagination
     * 3. Stores results in session for detail view
     * 4. Loads NAF codes for activity description
     * 
     * @param Request $request The HTTP request containing:
     *                        - query: Search term (name, SIREN, address)
     *                        - page: Page number for pagination
     * 
     * @return \Illuminate\View\View
     * @throws \Exception When API call fails
     */
    public function search(Request $request)
    {
        $query = $request->input('query');
        if (!$query) {
            return back()->withErrors(['query' => 'Veuillez entrer un terme de recherche.']);
        }
        try {
            SearchHistory::create([
                'user_id' => Auth::id(),
                'search_query' => $query,
            ]);
        } catch (\Exception $e) {
        }

        $params = [
            'q' => $query,
            'per_page' => 6, // Nombre de résultats par page
            'page' => $request->input('page', 1), // Page actuelle (par défaut 1)
            'limite_matching_etablissements' => 100,
        ];

        // Variables pour les résultats
        $results = [];
        $total_results = 0;
        $total_pages = 0;

        // Appeler l'API
        try {
            $response = Http::get('https://recherche-entreprises.api.gouv.fr/search', $params);
            if ($response->successful()) {
                $api_results = $response->json();
                $total_results = $api_results['total_results'] ?? 0;
                $results = $api_results['results'] ?? [];
                $total_pages = ceil($total_results / 6); // Calcul des pages totales

                // Vérifier et marquer les favoris
                $user_id = Auth::id();
                foreach ($results as &$company) {
                    $company['is_favourite'] = Company::isFavourite($company['siren'], $user_id);
                }

                // Stocker les résultats en session pour pagination
                session(['search_results_page_' . $params['page'] => $results]);
            } else {
                return back()->withErrors(['query' => 'Erreur lors de la recherche.']);
            }
        } catch (\Exception $e) {
            dd($e);
            return back()->withErrors(['query' => 'Erreur lors de la recherche: ' . $e->getMessage()]);
        }

        $naf_codes = ApeNafCode::all()->pluck('label', 'code')->toArray();

        // Retourner les résultats avec pagination
        return view('company.results', [
            'results' => $results,
            'current_page' => $params['page'],
            'total_pages' => $total_pages,
            'query' => $query,
            'total_results' => $total_results,
            'naf_codes' => $naf_codes,
        ]);
    }

    /**
     * Display detailed information for a specific company.
     * 
     * This method:
     * 1. Retrieves company data from session storage
     * 2. Loads related reference data (NAF, legal categories, types)
     * 3. Fetches company comments
     * 4. Displays comprehensive company information
     * 
     * @param string $siren Company's SIREN number
     * 
     * @return \Illuminate\View\View
     */
    public function show(string $siren)
    {
        $params = ['q' => $siren];
        $response = Http::get('https://recherche-entreprises.api.gouv.fr/search', $params);
        $company = $response->json()['results'][0];
        if (!$company) {
            return back()->withErrors(['siren' => 'Entreprise non trouvée.']);
        }

        $comments = Comment::where('siren', $company['siren'])->get();
        $naf_codes = ApeNafCode::all()->pluck('label', 'code')->toArray();
        $fj = LegalCategory::all()->pluck('label', 'code')->toArray();
        $ct = CompanyType::all()->pluck('label', 'code')->toArray();

        return view('company.show', [
            'company' => $company,
            'comments' => $comments,
            'naf_codes' => $naf_codes,
            'fj' => $fj,
            'ct' => $ct,
        ]);
    }


    public function deleteSearchHistory(Request $request, $id)
    {
        $history = SearchHistory::where('id', $id)
            ->where('user_id', Auth::id())
            ->first();

        if (!$history) {
            return response()->json(['success' => false, 'message' => 'Entrée non trouvée'], 404);
        }

        $history->delete();

        return response()->json(['success' => true]);
    }
}
