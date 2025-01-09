<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Mon Application')</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    @vite('resources/js/app.js')
    @vite('resources/css/app.css')
</head>

<body class="bg-gray-100 text-gray-900">
    <!-- Header -->
    <nav x-data="{ open: false }" class="bg-white shadow">
        <div class="container mx-auto px-6">
            <div class="flex justify-between h-20">
                <!-- Logo -->
                <div class="flex items-center">
                    <a href="/" class="text-3xl font-bold text-blue-500">
                        Business Lookup
                    </a>
                </div>
                <div class="flex items-center space-x-4">
                    <!-- Profile Link -->
                    <a href="{{ route('profile.edit') }}"
                        class="flex items-center space-x-2 text-gray-700 hover:text-blue-500">
                        <i class="fas fa-user text-xl"></i>
                        <span class="font-medium text-base">{{ Auth::user()->name }}</span>
                    </a>
                    <a href="/logout"
                        class="text-gray-700 hover:text-blue-500">
                        <i class="fas fa-sign-out-alt text-xl"></i>
                    </a>
                </div>


            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="container mx-auto px-4 py-8 min-h-screen flex justify-center">
        @yield('content')
        @if (isset($slot))
            {{ $slot }}
        @endif

    </main>

    <!-- Footer -->
    <footer class="bg-gray-800 text-white py-4">
        <div class="container mx-auto px-4 text-center">
            &copy; {{ date('Y') }} Business Lookup. Tous droits réservés.
        </div>
    </footer>
</body>
</div>
</footer>
</body>

</html>
