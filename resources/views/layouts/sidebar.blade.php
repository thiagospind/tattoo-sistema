<nav id="sidebar">
    <div class="custom-menu">
        <button type="button" id="sidebarCollapse" class="btn btn-primary">
            <i class="fa fa-bars"></i>
            <span class="sr-only">Toggle Menu</span>
        </button>
    </div>
{{--    <h1><a href="/" class="logo">May Tatto</a></h1>--}}
    <ul class="list-unstyled components mb-5">
        <li >
            <a href="#"><span class="fas fa-home mr-3"></span> Home</a>
        </li>
        <li>
            <a href="/orcamento/lista/{{ Auth::user()->id }}"><span class="fas fa-money-check-alt mr-3"></span> Orçamentos</a>
        </li>
        <li>
            <a href="#"><span class="fas fa-dollar-sign mr-3"></span> Pagamentos</a>
        </li>
        <li>
            <a href="#"><span class="far fa-calendar-alt mr-3"></span> Agenda</a>
        </li>
        <li>
            <a href="#"><span class="fas fa-question mr-3"></span> Orientações</a>
        </li>
    </ul>

</nav>
