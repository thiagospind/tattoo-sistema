
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>May Pinheiro Tattoo - @yield('title')</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <meta charset="utf-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/sign-in/">

    <!-- Bootstrap core CSS -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/login.css') }}" rel="stylesheet">

</head>

<body class="text-center">
<form class="form-signin" method="post" action="/login">
    @csrf
    <img class="thumbnail mb-4" src="{{ asset('img/logo_nova.png') }}" alt="" width="70%" height="70%">
    <h1 class="h3 mb-3 font-weight-normal">Login</h1>
    <label for="inputEmail" class="sr-only">Email</label>
    <input type="email" id="inputEmail" class="form-control text-white bg-transparent" placeholder="Email..." required autofocus>
    <label for="inputPassword" class="sr-only">Senha</label>
    <input type="password" id="inputPassword" class="form-control text-white bg-transparent" placeholder="Senha..." required>
    <div class="checkbox mb-3">
        <label>
            <input type="checkbox" value="remember-me"> Remember me
        </label>
    </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
</form>
</body>
</html>
