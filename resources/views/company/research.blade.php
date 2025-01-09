@extends('layouts.app')

@section('title', 'Recherche d\'entreprises')

@section('content')

<div class="flex-1 flex items-center justify-center p-4 sm:p-6 lg:p-8">
    <img src="{{ asset('img/mg.png') }}" alt="" class="h-80 absolute top-14">
    <div class="w-full max-w-3xl space-y-8">
        <!-- Page Title -->
        <div class="text-center">
            <h1 class="text-3xl font-bold text-gray-900">
                Recherche d'entreprises
            </h1>
            <p class="mt-2 text-gray-600">
                Trouvez rapidement les informations dont vous avez besoin sur les entreprise françaises
            </p>
            <b>
                Vérifiez les informations légales publiques des entreprises, associations et services publics en France
            </b>
        </div>

        <!-- Search Form -->
        <form action="{{ route('search') }}" method="GET" class="relative">
            <div class="relative group">
                <!-- Search Icon -->
                <div class="absolute inset-y-0 left-0 flex items-center pl-6 pointer-events-none">
                    <i class="fa-solid fa-magnifying-glass text-gray-400 text-lg group-hover:text-blue-500 transition-colors duration-200"></i>
                </div>
                
                <!-- Input Field -->
                <input 
                    type="text" 
                    name="query" 
                    id="search" 
                    class="w-full pl-16 pr-32 py-4 text-lg border-2 border-gray-200 rounded-xl focus:ring-4 focus:ring-blue-100 focus:border-blue-500 outline-none transition-all duration-200 bg-white shadow-sm hover:shadow-md"
                    placeholder="Nom, adresse, SIRET/SIREN..."
                    value="{{ request('query') }}"
                    required
                >

                <!-- Submit Button -->
                <button 
                    type="submit" 
                    class="absolute right-2 top-1/2 -translate-y-1/2 bg-blue-500 hover:bg-blue-600 text-white font-medium py-2 px-6 rounded-lg transition-all duration-200 hover:shadow-lg active:scale-95 flex items-center space-x-2"
                >
                    <i class="fa-solid fa-search"></i>
                    <span>Rechercher</span>
                </button>
            </div>
        </form>

        <!-- Search Tips -->
        <div class="text-sm text-gray-500 text-center">
            <p>Conseils de recherche : vous pouvez rechercher par nom d'entreprise, numéro SIRET/SIREN ou adresse</p>
        </div>
    </div>
</div>
@endsection