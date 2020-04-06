
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
    @if($errors->any())
        <div class="alert alert-danger" role="alert">
        @foreach($errors->all() as $err)
                <li>{{$err}}</li>
        @endforeach
        </div>
    @endif
    @if(session('msg'))
        <div class="alert alert-warning" role="alert">
            {{ session('msg') }}
        </div>
    @endif
    <img class="thumbnail mb-4" src="{{ asset('img/logo_nova_login.png') }}" alt="" width="70%" height="70%">
    <h1 class="h3 mb-3 font-weight-normal">Login</h1>
    <label for="email" class="sr-only">Email</label>
    <input type="email" id="email" name="email" class="form-control text-white bg-transparent" placeholder="Email..." autofocus>
    <label for="senha" class="sr-only">Senha</label>
    <input  id="password" name="password" type="password" class="form-control text-white bg-transparent" placeholder="Senha...">
    <a class="text-white" href="#"><i class="fas fa-key"></i> Esqueci a senha...</a>
{{--    <div class="checkbox mb-3">--}}
{{--        <label>--}}
{{--            <input type="checkbox" value="remember-me"> Remember me--}}
{{--        </label>--}}
{{--    </div>--}}
    <button class="btn btn-primary btn-block mt-2" type="submit">Entrar</button>
    <p class="mt-5 mb-3 text-muted">&copy;May Pinheiro Tattoo</p>
</form>
</body>
</html>
