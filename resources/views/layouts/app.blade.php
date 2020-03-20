<!doctype html>
<html lang="pt-br">
<head>
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/site.css') }}" rel="stylesheet">
    <link href="{{ asset('css/footer.css') }}" rel="stylesheet">
{{--    <link href="{{ asset('css/gallery-grid.css') }}" rel="stylesheet">--}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">

    <title>May Pinheiro Tattoo - @yield('title')</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <meta charset="utf-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="@yield('tipo_meta')" content="@yield('meta')">
    <link href="https://fonts.googleapis.com/css?family=Bitter|Ubuntu&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/592c96640e.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container-fluid no-gutters ">
        @component('layouts.navbar')
        @endcomponent
        <main role="main">
            @hasSection('body')
                @yield('body')
            @endif
        </main>
{{--        @component('footer')--}}
{{--        @endcomponent--}}
    </div>

@component('layouts.footer')
@endcomponent
<script src="{{ asset('js/app.js') }}" type="text/javascript"></script>
<script src="{{ asset('js/site.js') }}" type="text/javascript"></script>
<script src="{{ asset('js/popper.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('js/jquery.mask.js') }}" type="text/javascript"></script>
<script src="{{ asset('js/mask.js') }}" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
<script>
    baguetteBox.run('.tz-gallery');
</script>

</body>
</html>
