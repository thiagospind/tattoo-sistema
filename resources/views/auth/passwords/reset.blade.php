@extends('layouts.app')
@section('title','Mudar Senha')
@section('body')
<div class="container container-sol-orcamento" >
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="py-3 text-center">
                <h2>Alteração de Senha</h2>
            </div>
            <form method="POST" action="/usuario/alterarsenha">
                @csrf

                <input type="hidden" name="idUsuHash" value="{{ session('idUsuHash') }}">
                @if(session('msg'))
                    <div class="alert alert-warning" role="alert">
                        {{ session('msg') }}
                    </div>
                @endif
                <div class="form-group row">
                    <div class="col">
                        <h5>Olá, {{$usuario->nome}}</h5>
{{--                        <input class="form-control" value="{{$usuario->nome}}" disabled>--}}
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col">
                        <input class="form-control {{ $errors->has('nome') ? 'is-invalid' : '' }}" type="password"
                               name="senha_atual" id="senha_atual" placeholder="Senha atual...">
                        @if($errors->has('nome'))
                            <div class=" {{$errors->has('nome') ? 'invalid-feedback' : ''}}">{{$errors->first('nome')}}</div>
                        @endif

                    </div>
                </div>
                <div class="form-group row">
                    <div class="col">
                        <input id="senha" type="password" class="form-control {{ $errors->has('senha') ? 'is-invalid' : '' }}"
                               name="senha" autocomplete="new-password"
                               placeholder="Nova senha...">
                        @if($errors->has('senha'))
                            <div class="{{ $errors->has('senha') ? 'invalid-feedback' : ''}}">{{$errors->first('senha')}}</div>
                        @endif
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col">
                        <input id="senha_confirmation" type="password" class="form-control {{ $errors->has('senha_confirmation') ? 'is-invalid' : '' }}"
                               name="senha_confirmation" autocomplete="new-password" placeholder="Repita a senha...">
                        @if($errors->has('senha_confirmation'))
                            <div class="{{ $errors->has('senha_confirmation') ? 'invalid-feedback' : ''}}">{{$errors->first('senha_confirmation')}}</div>
                        @endif
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
