@extends('layouts.app')

@section('title', 'Recherche d\'entreprises')

@section('content')
    <div class="flex justify-center items-center">
        <div class="w-full max-w-md ">
            <form action="" method="GET" class="flex ">
                <label for="search" class="sr-only">Rechercher une entreprise</label>
                <div class="relative">
                    <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                        <i class="fa-solid fa-magnifying-glass"></i> 
                    </div>
                    <input type="text" name="query" id="search" class="block w-full pl-10 pr-4 py-2 rounded-md border border-gray-300 focus:border-blue-500 focus:ring-blue-500" placeholder="Nom, adresse, SIRET/SIREN..." required>
                </div>
                <button type="submit" class="mt-4 bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Rechercher</button>
            </form>
        </div>
    </div>
@endsection