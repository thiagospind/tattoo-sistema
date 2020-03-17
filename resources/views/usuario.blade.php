@extends('layouts.app')
@section('title','Cadastro de Usuários')
@section('body')
    <div class="container container-sol-orcamento mt-5 pt-5">
{{--        <div class="card">--}}
            <div class="py-3 text-center">
                <h2>Cadastro de Usuários</h2>
            </div>
{{--            <div class="card-body">--}}
                <form method="post" action="/usuario">
                    @csrf
                    <div class="form-row">
                        <div class="form-group col-12 col-sm-12 col-md-12">
                            <label for="nome">Nome</label>
                            <input class="form-control {{ $errors->has('nome') ? 'is-invalid' : '' }}" type="text"
                                   name="nome" id="nome"
                                   value="{{ isset($usuario->nome) ? $usuario->nome : old('nome') }}">
                            @if($errors->has('nome'))
                                <div class=" {{$errors->has('nome') ? 'invalid-feedback' : ''}}">{{$errors->first('nome')}}</div>
                            @endif
                        </div>
                        <div class="form-group col-12 col-sm-12 col-md-12">
                            <label for="telefone">Telefone</label>
                            <input class="form-control {{ $errors->has('telefone') ? 'is-invalid' : '' }}"
                                   name="telefone" id="telefone"
                                   value="{{ isset($usuario->telefone) ? $usuario->telefone : old('telefone') }}">
                            @if($errors->has('telefone'))
                                <div class=" {{$errors->has('telefone') ? 'invalid-feedback' : ''}}">{{$errors->first('telefone')}}</div>
                            @endif
                        </div>
                        <div class="form-group col-12 col-sm-12 col-md-12">
                            <label for="email">Email</label>
                            <input class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }}"
                                   name="email" id="email"
                                   value="{{ isset($usuario->email) ? $usuario->email : old('email') }}">
                            @if($errors->has('email'))
                                <div class=" {{$errors->has('email') ? 'invalid-feedback' : ''}}">{{$errors->first('email')}}</div>
                            @endif
                        </div>
                        <div class="form-group col-12 col-sm-12 col-md-12">
                            <label for="senha">Senha</label>
                            <input class="form-control {{ $errors->has('senha') ? 'is-invalid' : '' }}" type="password"
                                   name="senha" id="senha">
                            @if($errors->has('senha'))
                                <div class=" {{$errors->has('senha') ? 'invalid-feedback' : ''}}">{{$errors->first('senha')}}</div>
                            @endif
                        </div>
                    </div>
                </form>
            </div>
{{--        </div>--}}
{{--    </div>--}}
@endsection
