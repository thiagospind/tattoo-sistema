<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-dark ">
    <a class="navbar-brand" href="#">
        <img src="{!! asset('/img/logo_nova.png') !!}" width="auto" height="40" alt="">
        May Pinheiro Tattoo
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <ul class="navbar-nav mx-auto">
            <li class="nav-item">
                <a class="nav-link" href="/"><i class="fas fa-home"></i> Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/orcamento"><i class="fas fa-comment-dollar"></i> Orçamento</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="fas fa-trophy"></i> Prêmios</a>
            </li>
        </ul>
            <form class="navbar-nav">
                @if(isset(Auth::user()->nome))
                    <li class="nav-item dropdown mr-lg-5">
                        <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-user"></i>
                            {{--                    <img class="my-auto" src="{!! asset('img/user.png') !!}">--}}
                                Olá {{Auth::user()->nome}}
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="/alterasenha">Alterar Senha</a>
                            <a class="dropdown-item" href="/logout">Sair</a>
{{--                            <div class="dropdown-divider"></div>--}}
                        </div>
                    </li>
                @else
                    <li class="nav-item dropdown mr-lg-5">
                        <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-user"></i> Usuário
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="/login">Login</a>
                            <a class="dropdown-item" href="/usuario">Cadastrar</a>
{{--                            <div class="dropdown-divider"></div>--}}
                        </div>
                    </li>
                @endif
            </form>
    </div>
</nav>
