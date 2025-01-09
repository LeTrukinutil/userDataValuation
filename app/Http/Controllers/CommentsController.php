<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Company;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use Illuminate\Support\Facades\Http;





class CommentsController extends Controller
{
    public function store(Request $request, $siren)
    {
        $request->validate([
            'content' => 'required|string|max:1000',
        ]);

        // verify that the company exists before inserting comment about it 
        $company = Company::find($siren);

        if (!$company) {
            $params = ['q' => $siren];
            $response = Http::get('https://recherche-entreprises.api.gouv.fr/search', $params);
            if ($response->successful()) {
                $apiCompany  = $response->json()['results']['0'];
                $company = Company::create([
                    'siren' => $apiCompany['siren'],
                    'name' => $apiCompany['nom_complet'] ?? 'Nom par défaut',
                ]);
            } else {
                return back()->withErrors(['error' => 'Entreprise non trouvée.']);
            }
        }

        // Créer un nouveau commentaire
        try {
            Comment::create([
                'user_id' => Auth::id(),
                'siren' => $siren,
                'content' => $request->content,
            ]);

            return redirect()->route('company.show', $siren)->with('success', 'Commentaire ajouté avec succès!');
        } catch (\Exception $e) {
            dd($e);
            return back()->withErrors(['error' => 'Une erreur est survenue lors de l\'ajout du commentaire.']);
        }

        return redirect()->route('company.show', $siren)->with('success', 'Commentaire ajouté avec succès!');
    }
}
