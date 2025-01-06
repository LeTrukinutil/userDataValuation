<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Mon Application')</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">

    @vite('resources/css/app.css')
</head>
<body class="bg-gray-100 text-gray-900">
    <!-- Header -->
    <header class="bg-white shadow">
        <div class="container mx-auto px-4 py-4 flex justify-between items-center">
            <a href="/" class="text-2xl font-bold text-blue-500">MonApp</a>
            <nav>
                <ul class="flex space-x-4">
                    <li><a href="#" class="text-gray-700 hover:text-blue-500">Accueil</a></li>
                    <li><a href="#" class="text-gray-700 hover:text-blue-500">À propos</a></li>
                    <li><a href="#" class="text-gray-700 hover:text-blue-500">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Main Content -->
    <main class="container mx-auto px-4 py-8 h-screen flex justify-center">
        @yield('content')
    </main>

    <!-- Footer -->
    <footer class="bg-gray-800 text-white py-4">
        <div class="container mx-auto px-4 text-center">
            &copy; {{ date('Y') }} MonApp. Tous droits réservés.
        </div>
    </footer>
</body>
</html>
