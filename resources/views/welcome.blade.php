<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>@yield('title', config('app.name', 'Laravel'))</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />
        
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

        <!-- Scripts -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
    <body class="font-sans antialiased">
        <div class="min-h-screen bg-gray-50">
            <!-- Navigation -->
            <nav class="bg-white shadow">
                <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                    <div class="flex justify-between h-16">
                        <div class="flex">
                            <!-- Logo -->
                            <div class="flex-shrink-0 flex items-center">
                                <a href="{{ url('/') }}">
                                    <x-application-logo class="block h-9 w-auto fill-current text-gray-800" />
                                </a>
                            </div>
                        </div>

                        <!-- Navigation Links -->
                        <div class="hidden sm:flex sm:items-center sm:ml-6">
                            @auth   
                                <div class="ml-3 relative">
                                    <!-- User Dropdown -->
                                </div>
                            @else
                                <a href="{{ route('login') }}" class="text-gray-600 hover:text-gray-900 px-3 py-2 rounded-md text-sm font-medium">
                                    Se connecter
                                </a>
                                @if (Route::has('register'))
                                    <a href="{{ route('register') }}" class="text-gray-600 hover:text-gray-900 px-3 py-2 rounded-md text-sm font-medium">
                                        S'inscrire
                                    </a>
                                @endif
                            @endauth
                        </div>
                    </div>
                </div>
            </nav>

            <!-- Page Content -->
            <main>
                @yield('content')
            </main>

            <!-- Footer -->
            <footer class="bg-white shadow mt-8">
                <div class="max-w-7xl mx-auto py-4 px-4 sm:px-6 lg:px-8">
                    <p class="text-center text-sm text-gray-500">
                        © {{ date('Y') }} {{ config('app.name', 'Laravel') }}. Tous droits réservés.
                    </p>
                </div>
            </footer>
        </div>
    </body>
</html>