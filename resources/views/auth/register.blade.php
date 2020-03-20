@extends('layouts.app')
@section('title','Cadastro de Usuários')
@section('body')
<div class="container container-sol-orcamento">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="py-3 text-center">
                <h2>Cadastro de Usuários</h2>
            </div>
            <form method="POST" action="{{ route('register') }}">
                @csrf
                <div class="form-group row">
                    <div class="col">
                        <input id="nome" type="text" class="form-control"
                               name="nome" value="{{ old('nome') }}" autocomplete="name" autofocus
                               placeholder="Nome...">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col">
                        <input id="email" type="email" class="form-control"
                               name="email" value="{{ old('email') }}" autocomplete="email"
                               placeholder="Email...">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col">
                        <input id="telefone" type="text" class="form-control"
                               name="telefone" value="{{ old('telefone') }}" autocomplete="email"
                               placeholder="Telefone...">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col">
                        <select class="form-control" name="nivel" id="nivel">
                            <option value="">Selecione...</option>
                            <option value="administrador">Administrador</option>
                            <option value="consulta">Consulta</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col">
                        <input id="senha" type="password" class="form-control"
                               name="senha" autocomplete="new-password"
                               placeholder="Senha...">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col">
                        <input id="confirma_senha" type="password" class="form-control"
                               name="confirma_senha" autocomplete="new-password" placeholder="Repita a senha...">
                    </div>
                </div>
                <div class="form-group row mb-0">
                    <div class="col">
                        <button type="submit" class="btn btn-primary">
                            Salvar
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
