@extends('layouts.app')

@section('title', 'Upload CSV')

@section('content')
    <div class="container mx-auto px-4 py-8">
        <div class="max-w-2xl mx-auto">
            <h1 class="text-3xl font-bold text-center mb-8">
                <i class="fas fa-file-csv text-blue-500"></i>
                Importation de fichier CSV
            </h1>

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
                @if ($errors->any())
                    <div id="error-message" class="bg-red-50 border-l-4 border-red-500 p-4">
                        <style>
                            @keyframes fadeOut {
                                from {
                                    opacity: 1;
                                }

                                to {
                                    opacity: 0;
                                }
                            }

                            .fade-out {
                                animation: fadeOut 5s ease-out forwards;
                            }
                        </style>
                        <div class="flex items-center">
                            <i class="fas fa-exclamation-circle text-red-500 mr-2"></i>
                            <ul class="text-red-700">
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
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
                        }, 5000);
                    </script>
                @endif

                <button type="submit"
                    class="w-full bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded-lg flex items-center justify-center">
                    <i class="fas fa-upload mr-2"></i>
                    Importer le fichier
                </button>
            </form>
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
