<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Company;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;

class CommentsController extends Controller
{
    /**
     * Store a new comment for a company
     * @param Request $request
     * @param string $siren Company identifier
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request, $siren)
    {
        // Validate comment content
        $request->validate([
            'content' => 'required|string|max:1000',
        ]);

        // Check if the company exists in our database
        $company = Company::find($siren);

        // If company not found, try to fetch it from the French government API
        if (!$company) {
            $params = ['q' => $siren];
            $response = Http::get('https://recherche-entreprises.api.gouv.fr/search', $params);
            if ($response->successful()) {
                $apiCompany  = $response->json()['results']['0'];
                $company = Company::create([
                    'siren' => $apiCompany['siren'],
                    'name' => $apiCompany['nom_complet'] ?? 'Default Name',
                ]);
            } else {
                return back()->withErrors(['error' => 'Company not found.']);
            }
        }

        // Create a new comment
        try {
            Comment::create([
                'user_id' => Auth::id(),
                'siren' => $siren,
                'content' => $request->content,
            ]);

            return redirect()->route('company.show', $siren)->with('success', 'Comment added successfully!');
        } catch (\Exception $e) {
            // Debug any errors that occur
            dd($e);
            return back()->withErrors(['error' => 'An error occurred while adding the comment.']);
        }

        // Note: This line is unreachable due to the return statements above
        return redirect()->route('company.show', $siren)->with('success', 'Comment added successfully!');
    }
}