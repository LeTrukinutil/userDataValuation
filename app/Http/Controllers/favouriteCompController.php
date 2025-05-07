<?php

namespace App\Http\Controllers;

use App\Models\Company;
use App\Models\UserFavouritesCompany;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;

class favouriteCompController extends Controller
{
    public function toggleToFavourites(Request $request, string $siren)
    {
        $company = Company::find($siren);
        if (!$company) {
            $params = ['q' => $siren];
            $response = Http::get('https://recherche-entreprises.api.gouv.fr/search', $params);
            if ($response->successful()) {
                $apiCompany  = $response->json()['results'][0];
                $company = Company::create([
                    'siren' => $apiCompany['siren'],
                    'name' => $apiCompany['nom_complet'] ?? 'Default Name',
                ]);
            } else {
                return back()->withErrors(['error' => 'Company not found.']);
            }
        }

        $userId = Auth::id();

        try {
            $existing = UserFavouritesCompany::where('user_id', $userId)
                ->where('siren', $siren)
                ->first();

            if ($existing) {
                $existing->delete();
                return response()->json([
                    'success' => true,
                    'is_favourite' => false,
                    'message' => 'Company removed from favourites.'
                ]);
            } else {
                UserFavouritesCompany::create([
                    'user_id' => $userId,
                    'siren' => $siren,
                ]);
                return response()->json([
                    'success' => true,
                    'is_favourite' => true,
                    'message' => 'Company added to favourites.'
                ]);
            }
        } catch (\Exception $e) {
            dd($e);
            return response()->json([
                'success' => false,
                'error' => $e
            ], 500);
        }
    }

    public function favourites()
    {
        $userId = Auth::id();
        $favourites = UserFavouritesCompany::where('user_id', $userId)->get();
        $companies = [];

        foreach ($favourites as $favourite) {
            $company = Company::find($favourite->siren);
            if ($company) {
                $companies[] = $company;
            }
        }

        return view('company.favourites', [
            'companies' => $companies,
        ]);
    }
}
