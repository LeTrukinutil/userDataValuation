<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Mon Application')</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
                    <a href="{{ route('favourites.index') }}" class="text-gray-700 hover:text-blue-500">
                        <i class="fa-solid fa-bookmark"></i>
                    </a>
                    <a href="/logout" class="text-gray-700 hover:text-blue-500">
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
<script>
    $(document).ready(function() {
        $('.favourite-toggle-btn').on('click', function(e) {
            e.preventDefault();

            const $form = $(this).closest('.favourite-toggle-form');
            const siren = $form.data('siren');
            const url = `/company/${siren}/favourites`; // adapte si ton route name est différent

            $.ajax({
                url: url,
                method: 'POST',
                data: {
                    _token: $form.find('input[name="_token"]').val()
                },
                success: function(response) {
                    const $icon = $form.find('i');
                    if (response.is_favourite) {
                        $icon.removeClass('far text-gray-400').addClass('fa-solid').css(
                            'color', '#FFD43B');
                    } else {
                        $icon.removeClass('fa-solid').addClass('far text-gray-400').css(
                            'color', '');
                    }
                },
                error: function() {
                    alert("Erreur lors de la mise à jour des favoris.");
                }
            });
        });
    });
</script>

</html>
