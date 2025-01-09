@extends('layouts.app')

@section('title', 'Résultats de recherche')

@section('content')
    @php
        $adresse = urlencode($company['siege']['adresse']);
    @endphp
    <div class="max-w-full min-w-[80%] mx-auto py-6 px-2 sm:px-4 lg:px-6">
        <div class="mb-6">
            <a href="/search" id="back-link" class="flex items-center text-blue-600 hover:text-blue-800">
                <i class="fas fa-arrow-left mr-2"></i> Retour à la liste des résultats
            </a>
        </div>
        <!-- Main information -->
        <div class="bg-white rounded-lg shadow-sm p-6">
            <div class="flex justify-between items-center mb-6">
                <h1 class="text-2xl font-bold text-blue-800 mr-2">Informations légales de {{ $company['nom_complet'] }}</h1>
                <div class="flex gap-4">
                    <img src="{{ asset('img/insee.svg') }}" alt="Insee" class="h-8">
                    <img src="{{ asset('img/vies.svg') }}" alt="EU" class="h-8">
                    <img src="{{ asset('img/inpi.svg') }}" alt="INPI" class="h-8">
                </div>
            </div>
            <div class="space-y-4 mt-9">
                <div class="space-y-2">
                    <div class="flex justify-between">
                        <h3 class="text-sm font-medium text-gray-500">Dénomination</h3>
                        <p class="mt-1">{{ $company['nom_complet'] }}</p>
                    </div>
                    <hr class="my-2">

                    <div class="flex justify-between">
                        <h3 class="text-sm font-medium text-gray-500">SIREN</h3>
                        <p class="mt-1">{{ $company['siren'] }}</p>
                    </div>
                    <hr class="my-2">

                    <div class="flex justify-between">
                        <h3 class="text-sm font-medium text-gray-500">SIRET du siège social</h3>
                        <p class="mt-1">{{ $company['siege']['siret'] }}</p>
                    </div>
                    <hr class="my-2">

                    <div class="flex justify-between">
                        <h3 class="text-sm font-medium text-gray-500">N° TVA Intracommunautaire</h3>
                        <p class="mt-1">
                            FR{{ $company['siren'] }}
                        </p>
                    </div>
                    <hr class="my-2">

                    <div class="flex justify-between">
                        <h3 class="text-sm font-medium text-gray-500">N° EORI</h3>
                        <p class="mt-1">FR{{ $company['siren'] }}00816</p>
                    </div>
                    <hr class="my-2">

                    <div class="flex justify-between">
                        <h3 class="text-sm font-medium text-gray-500">Activité principale (NAF/APE)</h3>
                        <p class="mt-1">{{ $company['activite_principale'] ?: '<i>non renseigné</i>' }}</p>
                    </div>
                    <hr class="my-2">

                    <div class="flex justify-between">
                        <h3 class="text-sm font-medium text-gray-500">Adresse postale</h3>
                        <p class="mt-1">{{ $company['siege']['adresse'] }}</p>
                    </div>
                    <hr class="my-2">

                    <div class="flex justify-between">
                        <h3 class="text-sm font-medium text-gray-500">Forme juridique</h3>
                        <p class="mt-1">{{ $company['nature_juridique'] ?: '<i>non renseigné</i>' }}</p>
                    </div>
                    <hr class="my-2">

                    <div class="flex justify-between">
                        <h3 class="text-sm font-medium text-gray-500">Catégorie d'entreprise</h3>
                        <p class="mt-1">{!! $company['categorie_entreprise'] ?: '<i>non renseigné</i>' !!}</p>
                    </div>

                    <hr class="my-2">

                    <div class="flex justify-between">
                        <h3 class="text-sm font-medium text-gray-500">Effectif salarié</h3>
                        <p class="mt-1">
                            @if ($company['tranche_effectif_salarie'] == 0 || !$company['tranche_effectif_salarie'])
                                <i>non renseigné</i>
                            @else
                                {{ $company['tranche_effectif_salarie'] }}
                                ({{ $company['annee_tranche_effectif_salarie'] }})
                            @endif
                        </p>
                    </div>
                    <hr class="my-2">

                    <div class="flex justify-between">
                        <h3 class="text-sm font-medium text-gray-500">Date de création</h3>
                        <p class="mt-1">{{ \Carbon\Carbon::parse($company['date_creation'])->format('d/m/Y') }}</p>
                    </div>

                    <div class="space-y-3 mt-9">
                        <h3 class="text-lg mt-6 font-bold text-blue-800">État d'inscription</h3>
                        <div class="flex items-center">
                            <i class="fas fa-circle-check text-green-500 mr-3"></i>
                            <span>Inscrite (Insee) le
                                {{ \Carbon\Carbon::parse($company['date_creation'])->format('d/m/Y') }}</span>
                        </div>
                        <div class="flex items-center">
                            <i class="fas fa-circle-check text-green-500 mr-3"></i>
                            <span>Immatriculée au RNE (INPI) le
                                {{ \Carbon\Carbon::parse($company['date_mise_a_jour_rne'])->format('d/m/Y') }}</span>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- Head office -->
        <div class="bg-white rounded-lg shadow-sm p-6 mt-6">
            <div class="space-y-4">
                <h1 class="text-2xl font-bold text-blue-800 mr-2">Siege social de {{ $company['nom_complet'] }}</h1>
                <div class="flex justify-between">
                    <h3 class="text-lg  font-medium text-gray-500">Adresse</h3>
                    <div>
                        <p class="mt-1">{{ $company['siege']['adresse'] }}</p>
                        <a href="https://www.google.com/maps?q={{ $adresse }}" target="_blank"
                            class="group inline-flex items-center text-blue-600 underline underline-offset-2 hover:underline-offset-4 hover:decoration-2 transition">
                            → Voir sur la carte
                        </a>
                    </div>
                </div>

                <div class="flex justify-between">
                    <h3 class="text-lg font-medium text-gray-500">SIRET</h3>
                    <p class="mt-2">{{ $company['siege']['siret'] }}</p>
                </div>

                <div class="flex justify-between">
                    <h3 class="text-lg font-medium text-gray-500">Clé NIC</h3>
                    <p class="mt-1">{{ substr($company['siege']['siret'], -5) }}</p>
                </div>

                <div class="flex justify-between">
                    <h3 class="text-lg font-medium text-gray-500">Activité principale de l'établissement</h3>
                    <p class="mt-1">{{ $company['siege']['activite_principale'] }}</p>
                </div>

                <div class="flex justify-between">
                    <h3 class="text-lg font-medium text-gray-500">Forme juridique</h3>
                    <p class="mt-1">{{ $company['nature_juridique'] }}</p>
                </div>

                <div class="flex justify-between">
                    <h3 class="text-lg font-medium text-gray-500">Date de création de la société</h3>
                    <p class="mt-1">{{ \Carbon\Carbon::parse($company['date_creation'])->format('d/m/Y') }}</p>
                </div>

                <div class="flex justify-between">
                    <h3 class="text-lg font-medium text-gray-500">Date de création de l'établissement</h3>
                    <p class="mt-1">{{ \Carbon\Carbon::parse($company['siege']['date_creation'])->format('d/m/Y') }}</p>
                </div>
            </div>
        </div>

        <!-- List of establishments matching the search -->
        @if (count($company['matching_etablissements']) > 0)
            <div class="bg-white rounded-lg shadow-sm p-6 mt-6">
                <div class="mb-4">
                    <p class="text-gray-700">
                        Cette structure possède
                        <span class="font-semibold">{{ count($company['matching_etablissements']) }}
                            établissement(s)</span><b> correspondant à la recherche </b>
                        dont
                        {{ count(array_filter($company['matching_etablissements'], fn($e) => $e['etat_administratif'] === 'A')) }}
                        est en activité.
                    </p>
                </div>

                <div class="bg-indigo-50 p-4 rounded-t-lg">
                    <h2 class="text-indigo-900 font-semibold">
                        {{ count($company['matching_etablissements']) }} établissement(s) de {{ $company['nom_complet'] }}
                        <img src="{{ asset('img/insee.svg') }}" alt="Insee" class="h-8 float-right">
                    </h2>
                </div>

                <div class="mt-4">
                    <div class="text-sm font-medium mb-2">Établissement actif :</div>
                    <table class="w-full">
                        <thead>
                            <tr class="text-left border-b">
                                <th class="py-2">SIRET</th>
                                <th class="py-2">Activité (NAF/APE)</th>
                                <th class="py-2">Détails (nom, enseigne, adresse)</th>
                                <th class="py-2">Création</th>
                                <th class="py-2">État</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($company['matching_etablissements'] as $etablissement)
                                <tr class="border-b hover:bg-gray-50">
                                    <td class="py-3">
                                        <p class="text-blue-500">{{ $etablissement['siret'] }}</p>
                                    </td>
                                    <td class="py-3 text-xs">{{ $etablissement['activite_principale'] }}</td>
                                    <td class="py-3 text-xs">
                                        {{ $etablissement['adresse'] }}
                                        @if ($etablissement['est_siege'])
                                            <span
                                                class="ml-2 bg-blue-100 text-blue-800 px-2 py-0.5 rounded-md text-xs">SIÈGE
                                                SOCIAL</span>
                                        @endif
                                    </td>
                                    <td class="py-3">
                                        {{ \Carbon\Carbon::parse($etablissement['date_creation'])->format('d/m/Y') }}</td>
                                    <td class="py-3 text-xs">
                                        @if ($etablissement['etat_administratif'] === 'A')
                                            <span class="bg-green-100 text-green-800 px-2 py-1 rounded-md text-xs">EN
                                                ACTIVITÉ</span>
                                        @else
                                            <span class="bg-red-100 text-red-800 px-2 py-1 rounded-md text-xs">FERMÉ</span>
                                        @endif
                                    </td>
                                </tr>
                            @endforeach

                        </tbody>
                    </table>

                    <div class="mt-4 text-right text-sm text-gray-600">
                        Mise à jour le {{ \Carbon\Carbon::parse($company['date_mise_a_jour'])->format('d/m/Y') }}
                        <a href="https://annuaire-entreprises.data.gouv.fr/administration/insee"
                            class="text-blue-600 hover:underline ml-2">Source : Insee</a>
                    </div>
                </div>
            </div>
        @endif

        <!-- Commment section -->
        <div class="bg-white rounded-lg shadow-sm p-6 mt-6">
            <h2 class="text-2xl font-bold text-blue-800">Commentaires</h2>

            <div class="mt-4 space-y-4">
                @foreach ($comments as $comment)
                    <div class="border-b pb-4">
                        <div class="flex items-center mb-2">
                            <div class="flex-shrink-0">
                                <!-- Vous pouvez personnaliser l'image de l'utilisateur ici -->
                                <img src="{{ asset('img/default-avatar.png') }}" alt="Avatar"
                                    class="h-8 w-8 rounded-full">
                            </div>
                            <div class="ml-3">
                                <p class="text-sm font-medium text-gray-800">{{ $comment->user->name }}</p>
                                <p class="text-xs text-gray-500">
                                    {{ \Carbon\Carbon::parse($comment->created_at)->format('d/m/Y à H:i') }}</p>
                            </div>
                        </div>
                        <p class="text-sm text-gray-700">{{ $comment->content }}</p>
                    </div>
                @endforeach
            </div>
        </div>

        <!-- Add comment form -->

        <div class="bg-white rounded-lg shadow-sm p-6 mt-6">
            <h3 class="text-xl font-bold text-blue-800">Laissez un commentaire</h3>
            <form action="{{ route('comment.store', $company['siren']) }}" method="POST" class="mt-4">
                @csrf
                <div class="space-y-2">
                    <textarea name="content" rows="4" class="w-full border border-gray-300 rounded-md p-3 text-sm"
                        placeholder="Votre commentaire..." required></textarea>
                </div>
                <div class="mt-4 text-right">
                    <button type="submit" class="bg-blue-600 text-white px-4 py-2 rounded-md hover:bg-blue-700">Ajouter un commentaire</button>
                </div>
            </form>
        </div>
    </div>
    <script>
        document.getElementById('back-link').onclick = (e) => {
            e.preventDefault();
            history.back();
        };
    </script>
@endsection
