@extends('layouts.app')

@section('title', 'Résultats de recherche')

@section('content')
    <div class="flex-1 flex items-center justify-center p-4 sm:p-6 lg:p-8">
        <div class="w-full max-w-9xl space-y-8 ">
            <!-- Page Title -->
            <form action="{{ route('search') }}" method="GET" class="relative ">
                <div class="relative group">
                    <div class="absolute inset-y-0 left-0 flex items-center pl-6 pointer-events-none">
                        <i
                            class="fa-solid fa-magnifying-glass text-gray-400 text-lg group-hover:text-blue-500 transition-colors duration-200"></i>
                    </div>
                    <input type="text" name="query" id="search"
                        class="w-full pl-16 pr-32 py-4 text-lg border-2 border-gray-200 rounded-xl focus:ring-4 focus:ring-blue-100 focus:border-blue-500 outline-none transition-all duration-200 bg-white shadow-sm hover:shadow-md"
                        placeholder="Nom, adresse, SIRET/SIREN..." value="{{ request('query') }}" required>
                    <button type="submit"
                        class="absolute right-2 top-1/2 -translate-y-1/2 bg-blue-500 hover:bg-blue-600 text-white font-medium py-2 px-6 rounded-lg transition-all duration-200 hover:shadow-lg active:scale-95 flex items-center space-x-2">
                        <i class="fa-solid fa-search"></i>
                        <span>Rechercher</span>
                    </button>
                </div>
            </form>
            <div class="text-left">
                <p class="mt-2 text-gray-600">
                    {{ isset($total_results) ? $total_results : 0 }} résultats trouvés.
                </p>
            </div>

            <!-- Company list and their informations -->
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                @if (!empty($results))
                    @forelse ($results as $company)
                        @php
                            
                        @endphp
                        <div class="p-4 bg-white border border-gray-200 rounded-lg shadow-sm">
                            <h2 class="text-xl font-bold text-gray-800">
                                {{ $company['nom_raison_sociale'] ?? 'Nom non disponible' }}
                            </h2>
                            <p class="text-gray-600">{{ $company['siege']['adresse'] ?? 'Adresse non disponible' }}</p>
                            <p class="text-sm text-gray-500">SIREN : {{ $company['siren'] ?? 'N/A' }}</p>

                            @if (isset($company['dirigeants']) && count($company['dirigeants']) > 0)
                                <div class="flex items-center mt-2 text-sm text-gray-700">
                                    <i class="fas fa-user-tie mr-2"></i>
                                    <span><strong>Dirigeant :</strong>
                                        {{ $company['dirigeants'][0]['nom'] ?? 'Non disponible' }}
                                        {{ $company['dirigeants'][0]['prenoms'] ?? 'Non disponible' }}</span>
                                </div>
                            @endif
                            <div class="flex items-center mt-2 text-sm text-gray-700">
                                <i class="fas fa-cogs mr-2"></i>
                                <span><strong>Code NAF / APE :</strong>
                                    {{ $company['siege']['activite_principale'] ?? 'Non renseigné' }}</span>
                            </div>
                            <div class="mt-2 text-sm text-gray-600">
                                <strong>Description : </strong>
                                {{ $naf_codes[str_replace('.', '', $company['siege']['activite_principale'])]}}
                            </div>

                            <div class="mt-4">
                                <a href="{{ route('company.show', ['siren' => $company['siren']]) }}"
                                    class="text-blue-500 underline hover:text-blue-600 text-sm font-medium transition-all duration-200">
                                    Voir les établissements correspondants
                                    ({{ count($company['matching_etablissements']) }})
                                </a>

                            </div>

                        </div>
                    @empty
                        <p class="text-center text-gray-500">Aucun résultat trouvé.</p>
                    @endforelse
                @else
                    <p class="text-center text-gray-500">Aucun résultat trouvé.</p>
                @endif
            </div>

            <!-- Pagination -->
            <div class="flex justify-center mt-6">
                <div class="flex items-center space-x-2">
                    <!-- Previous Page -->
                    @if ($current_page > 1)
                        <a href="{{ url()->current() }}?query={{ $query }}&page=1"
                            class="px-4 py-2 bg-gray-200 text-gray-600 rounded-md hover:bg-gray-300">
                            Première
                        </a>
                        <a href="{{ url()->current() }}?query={{ $query }}&page={{ $current_page - 1 }}"
                            class="px-4 py-2 bg-gray-200 text-gray-600 rounded-md hover:bg-gray-300">
                            Précédente
                        </a>
                    @endif

                    <!-- Page Numbers -->
                    @foreach (range(max(1, $current_page - 2), min($total_pages, $current_page + 2)) as $i)
                        <a href="{{ url()->current() }}?query={{ $query }}&page={{ $i }}"
                            class="px-4 py-2 {{ $i == $current_page ? 'bg-blue-600 text-white' : 'bg-gray-200 text-gray-600' }} rounded-md hover:bg-gray-300">
                            {{ $i }}
                        </a>
                    @endforeach

                    <!-- Ellipse pages to limit the number of pages displayed -->
                    @if ($current_page > 3)
                        <span class="px-4 py-2 text-gray-600">...</span>
                    @endif
                    @if ($current_page < $total_pages - 2)
                        <span class="px-4 py-2 text-gray-600">...</span>
                    @endif

                    <!-- Next Page -->
                    @if ($current_page < $total_pages)
                        <a href="{{ url()->current() }}?query={{ $query }}&page={{ $current_page + 1 }}"
                            class="px-4 py-2 bg-gray-200 text-gray-600 rounded-md hover:bg-gray-300">
                            Suivante
                        </a>
                        <a href="{{ url()->current() }}?query={{ $query }}&page={{ $total_pages }}"
                            class="px-4 py-2 bg-gray-200 text-gray-600 rounded-md hover:bg-gray-300">
                            Dernière
                        </a>
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection
