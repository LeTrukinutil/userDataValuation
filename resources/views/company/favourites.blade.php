@extends('layouts.app')

@section('title', 'Mes entreprises favorites')

@section('content')
    <div class="flex-1 p-4 sm:p-6 lg:p-8">
        <div class="w-full max-w-5xl mx-auto">
            <h2 class="text-2xl font-bold text-gray-800 mb-6">Vos entreprises favorites</h2>

            @if (count($companies) > 0)
                <div class="space-y-2" id="favourite-list">
                    @foreach ($companies as $company)
                        <div class="favourite-item flex items-center justify-between bg-white border rounded-lg px-4 py-3 hover:shadow transition-all duration-200"
                            data-siren="{{ $company->siren }}">
                            <div class="flex items-center space-x-4">
                                <span class="font-medium">{{ $company->name ?? 'Nom inconnu' }}</span>
                                <span class="text-gray-500">SIREN : {{ $company->siren }}</span>
                            </div>
                            <div class="flex items-center space-x-4">
                                <a href="{{ route('company.show', $company->siren) }}"
                                    class="px-3 py-1 text-sm text-white bg-blue-500 rounded hover:bg-blue-600 transition-all duration-200">
                                    Voir plus
                                </a>
                                <button onclick="removeFavorite('{{ $company->siren }}')"
                                    class="text-red-500 hover:text-red-600 transition">
                                    <i class="fa-solid fa-xmark text-lg"></i>
                                </button>
                            </div>
                        </div>
                    @endforeach
                </div>
            @else
                <div class="text-gray-600">
                    Vous n'avez ajouté aucune entreprise à vos favoris pour l'instant.
                </div>
            @endif
        </div>
    </div>

    <script>
        function removeFavorite(siren) {
            const url = `/company/${siren}/favourites`;

            $.ajax({
                url: url,
                method: 'POST',
                headers: {
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                success: function(response) {
                    if (response.success) {
                        const item = document.querySelector(`[data-siren="${siren}"]`);
                        if (item) {
                            item.style.transition = 'opacity 0.4s ease';
                            item.style.opacity = '0';
                            setTimeout(() => item.remove(), 400);
                        }
                    }
                },
                error: function() {
                    alert("Erreur lors de la suppression du favori.");
                }
            });
        }
    </script>
@endsection
