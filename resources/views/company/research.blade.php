@extends('layouts.app')

@section('title', 'Recherche d\'entreprises')

@section('content')
    <div class="flex-1 flex items-center justify-center sm:p-6 lg:p-8">

        <div class="w-full max-w-3xl space-y-8">
            <!-- Page Title -->
            <div class="flex justify-center mb-6">
                <img src="{{ asset('img/mg.png') }}" width="200px" height="200px" alt="Logo">
            </div>
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
                        <i
                            class="fa-solid fa-magnifying-glass text-gray-400 text-lg group-hover:text-blue-500 transition-colors duration-200"></i>
                    </div>

                    <!-- Input Field -->
                    <input type="text" name="query" id="search"
                        class="w-full pl-16 pr-32 py-4 text-lg border-2 border-gray-200 rounded-xl focus:ring-4 focus:ring-blue-100 focus:border-blue-500 outline-none transition-all duration-200 bg-white shadow-sm hover:shadow-md"
                        placeholder="Nom, adresse, SIRET/SIREN..." value="{{ request('query') }}" required>

                    <!-- Submit Button -->
                    <button type="submit"
                        class="absolute right-2 top-1/2 -translate-y-1/2 bg-blue-500 hover:bg-blue-600 text-white font-medium py-2 px-6 rounded-lg transition-all duration-200 hover:shadow-lg active:scale-95 flex items-center space-x-2">
                        <i class="fa-solid fa-search"></i>
                        <span>Rechercher</span>
                    </button>
                </div>
            </form>

            @if ($searchHistory->isNotEmpty())
                <div class="mt-6">
                    <h2 class="text-md font-semibold text-gray-700 mb-2">Vos dernières recherches :</h2>
                    <div class="flex flex-wrap gap-2 max-w-2xl">

                        <div class="flex flex-wrap gap-2">
                            @foreach ($searchHistory as $history)
                                <div data-id="{{ $history->id }}"
                                    class="bg-blue-100 text-blue-800 px-4 py-2 rounded-xl text-sm transition-all duration-200 hover:shadow max-w-[100%] sm:max-w-[48%] lg:max-w-[32%] break-words">
                                    <div class="flex justify-between items-center gap-2">
                                        <a href="/search?query={{ urlencode($history->search_query) }}"
                                            class="hover:text-blue-600 truncate">{{ $history->search_query }}</a>
                                        <button onclick="removeSearch({{ $history->id }})"
                                            class="text-red-500 hover:text-red-600 transition" title="Supprimer">
                                            <i class="fa-solid fa-xmark text-lg"></i>
                                        </button>
                                    </div>
                                </div>
                            @endforeach
                        </div>

                    </div>
                </div>
            @endif

            <!-- Search Tips -->
            <div class="text-sm text-gray-500 text-center">
                <p>Conseils de recherche : vous pouvez rechercher par nom d'entreprise, numéro SIRET/SIREN ou adresse</p>
                <br>
                <b>Alternativement vous pouvez aussi :</b>
            </div>

            <!-- CSV Upload Button -->
            <div class="flex justify-center mt-4">
                <a href="{{ route('csv.upload') }}"
                    class="inline-flex items-center px-6 py-3 border border-transparent text-base font-medium rounded-md text-white bg-blue-600 hover:bg-blue-700 transition-colors duration-200">
                    <i class="fa-solid fa-file-csv mr-2"></i>
                    Rechercher en masse via un fichier CSV
                </a>
            </div>
        </div>
    </div>

    <script>
        function removeSearch(id) {
            const url = `/search-history/${id}/delete`;

            $.ajax({
                url: url,
                method: 'POST',
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                success: function(response) {
                    if (response.success) {
                        const item = document.querySelector(`[data-id="${id}"]`);
                        if (item) {
                            item.style.transition = 'opacity 0.4s ease';
                            item.style.opacity = '0';
                            setTimeout(() => item.remove(), 400);
                        }
                    } else {
                        alert("Erreur lors de la suppression.");
                    }
                },
                error: function() {
                    alert("Erreur lors de la suppression.");
                }
            });
        }
    </script>

@endsection
