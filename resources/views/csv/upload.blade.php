@extends('layouts.app')

@section('title', 'Upload CSV')

@section('content')
    <div class="container mx-auto px-4 py-8">
        <div class="max-w-2xl mx-auto">
            <h1 class="text-3xl font-bold text-center mb-8">
                <i class="fas fa-file-csv text-blue-500"></i>
                Importation de fichier CSV
            </h1>

            <div class="text-gray-600 text-center mb-8 space-y-4">
                <p class="text-lg font-semibold mb-4">
                    Cette application vous permet d'enrichir automatiquement les données de vos clients à partir de leurs numéros SIREN.
                </p>
                <p class="mb-6">
                    Importez votre fichier CSV contenant une liste de SIREN et obtenez instantanément un fichier enrichi 
                    avec toutes les informations détaillées de vos entreprises. Simple, rapide et efficace : sélectionnez 
                    les données souhaitées et laissez-nous faire le reste.
                </p>

                <div class="bg-gray-50 p-4 rounded-lg">
                    <h2 class="text-lg font-semibold mb-3">
                        <i class="fas fa-list-ol text-blue-500 mr-2"></i>
                        Mode d'emploi
                    </h2>
                    <ol class="list-decimal list-inside space-y-2 text-left">
                        <li>Sélectionnez les champs à récupérer dans le menu déroulant</li>
                        <li>Préparez votre fichier CSV avec une colonne de SIREN</li>
                        <li>Glissez-déposez ou sélectionnez votre fichier</li>
                        <li>Cliquez sur "Importer le fichier"</li>
                    </ol>
                </div>
            </div>

            <!-- Instructions -->
            <div class="bg-blue-50 border-l-4 border-blue-500 p-4 my-6">
                <div class="flex items-center">
                    <i class="fas fa-info-circle text-blue-500 mr-2"></i>
                    <p class="text-blue-700">
                        <span class="font-bold">Format requis :</span><br>
                        - Fichier CSV avec une seule colonne<br>
                        - Le fichier csv doit contenir une entête<br>
                        - Chaque ligne doit contenir un numéro SIREN
                    </p>
                </div>
            </div>

            <!-- Form -->
            <form action="{{ route('csv.upload') }}" method="POST" enctype="multipart/form-data" class="space-y-6">
                @csrf

                <!-- Select des champs -->
                <select name="selected_fields[]" multiple data-hs-select='{
                    "placeholder": "Sélectionnez les informations dont vous avez besoin...",
                    "toggleTag": "<button type=\"button\" aria-expanded=\"false\"></button>",
                    "toggleClasses": "hs-select-disabled:pointer-events-none hs-select-disabled:opacity-50 relative py-3 ps-4 pe-9 flex gap-x-2 text-nowrap w-full cursor-pointer bg-white border border-gray-200 rounded-lg text-start text-sm focus:outline-none focus:ring-2 focus:ring-blue-500",
                    "toggleCountText": "champs sélectionnés",
                    "dropdownClasses": "mt-2 z-50 w-full max-h-72 p-1 space-y-0.5 bg-white border border-gray-200 rounded-lg overflow-hidden overflow-y-auto [&::-webkit-scrollbar]:w-2 [&::-webkit-scrollbar-thumb]:rounded-full [&::-webkit-scrollbar-track]:bg-gray-100 [&::-webkit-scrollbar-thumb]:bg-gray-300",
                    "optionClasses": "py-2 px-4 w-full text-sm text-gray-800 cursor-pointer hover:bg-gray-100 rounded-lg focus:outline-none focus:bg-gray-100",
                    "optionTemplate": "<div class=\"flex items-center\"><div class=\"me-2\" data-icon></div><div><div class=\"hs-selected:font-semibold text-sm text-gray-800 \" data-title></div></div><div class=\"ms-auto\"><span class=\"hidden hs-selected:block\"><svg class=\"shrink-0 size-4 text-blue-600\" xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" viewBox=\"0 0 16 16\"><path d=\"M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z\"/></svg></span></div></div>",
                    "extraMarkup": "<div class=\"absolute top-1/2 end-3 -translate-y-1/2\"><svg class=\"shrink-0 size-3.5 text-gray-500 \" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"m7 15 5 5 5-5\"/><path d=\"m7 9 5-5 5 5\"/></svg></div>"
                }' class="block w-full mb-4" required>
                    <option value="">Choisir les champs dont vous avez besoin</option>
                    @foreach($csvHeaders as $label => $field)
                        <option value="{{ $field }}">{{ $label }}</option>
                    @endforeach
                </select>

                <div class="w-full">
                    <label for="csv_file"
                        class="flex flex-col items-center px-4 py-6 bg-white rounded-lg border-2 border-dashed border-gray-300 cursor-pointer hover:bg-gray-50"
                        ondrop="handleDrop(event)" ondragover="handleDragOver(event)">
                        <div class="flex flex-col items-center">
                            <i class="fas fa-cloud-upload-alt text-4xl text-gray-400 mb-2"></i>
                            <p class="text-sm text-gray-600">Cliquez pour sélectionner ou glissez-déposez</p>
                            <p class="text-xs text-gray-500">Fichiers CSV uniquement</p>
                        </div>
                        <input id="csv_file" name="csv_file" type="file" accept=".csv" class="hidden" required
                            onchange="handleFile(this.files[0])" />
                    </label>
                    <p id="file_name" class="text-sm text-gray-600 mt-2"></p>
                </div>
                <!-- Affichage des erreurs -->
                @if ($errors->any())
                    <div id="error-message" class="bg-red-50 border-l-4 border-red-500 p-4 mb-4">
                        <div class="flex items-center">
                            <i class="fas fa-exclamation-circle text-red-500 mr-2"></i>
                            <div class="text-red-700">
                                @foreach ($errors->all() as $error)
                                    <div class="mb-1">{{ $error }}</div>
                                @endforeach
                            </div>
                        </div>
                    </div>

                    <script>
                        setTimeout(() => {
                            const errorDiv = document.getElementById('error-message');
                            if (errorDiv) {
                                errorDiv.classList.add('fade-out');
                                setTimeout(() => {
                                    errorDiv.style.display = 'none';
                                }, 5000);
                            }
                        }, 1000);
                    </script>
                @endif

                <!-- Affichage des erreurs spécifiques -->
                @error('csv_file')
                    <div class="text-red-500 text-sm mt-1">{{ $message }}</div>
                @enderror
                
                @error('selected_fields')
                    <div class="text-red-500 text-sm mt-1">{{ $message }}</div>
                @enderror

                <button type="submit"
                    class="w-full bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded-lg flex items-center justify-center">
                    <i class="fas fa-upload mr-2"></i>
                    Importer le fichier
                </button>
            </form>
            <p class="text-sm text-center">
                Les données sont récupérées en temps réel depuis la base de données officielle de l'INSEE. Récupérées par l'<a href="https://api.gouv.fr" class="text-blue-500 underline">API gouvernementale</a>.
            </p>
        </div>
    </div>
@endsection

<script>
    function handleFile(file) {
        if (file) {
            document.getElementById('file_name').textContent = file.name;
        }
    }

    function handleDrop(event) {
        event.preventDefault();
        event.stopPropagation();

        const file = event.dataTransfer.files[0];
        if (file && file.name.endsWith('.csv')) {
            document.getElementById('csv_file').files = event.dataTransfer.files;
            handleFile(file);
        }
    }

    function handleDragOver(event) {
        event.preventDefault();
        event.stopPropagation();
    }
</script>
