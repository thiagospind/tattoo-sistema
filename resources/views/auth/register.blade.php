@extends('layouts.app')
@section('title','Cadastro de Usuários')
@section('body')
<div class="container container-sol-orcamento" >
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="py-3 text-center">
                <h2>Cadastro de Usuários</h2>
            </div>
            <form method="POST" action="{{ url('/usuario') }}" id="formulario">
                @csrf
                <div class="form-group row">
                    <div class="col">
                        <input id="nome" type="text" class="form-control {{ $errors->has('nome') ? 'is-invalid' : '' }}"
                               name="nome" value="{{ old('nome') }}" autocomplete="nome" autofocus
                               placeholder="Nome...">
                        @if($errors->has('nome'))
                            <div class="{{ $errors->has('nome') ? 'invalid-feedback' : ''}}">{{$errors->first('nome')}}</div>
                        @endif
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col">
                        <input id="email" type="email" class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }}"
                               name="email" value="{{ old('email') }}" autocomplete="email"
                               placeholder="Email...">
                        @if($errors->has('email'))
                            <div class="{{ $errors->has('email') ? 'invalid-feedback' : ''}}">{{$errors->first('email')}}</div>
                        @endif
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col">
                        <input id="telefone" type="text" class="form-control telefone {{ $errors->has('telefone') ? 'is-invalid' : '' }}"
                               name="telefone" value="{{ old('telefone') }}" autocomplete="telefone"
                               placeholder="Telefone...">
                        @if($errors->has('telefone'))
                            <div class="{{ $errors->has('telefone') ? 'invalid-feedback' : ''}}">{{$errors->first('telefone')}}</div>
                        @endif
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col">
                        <label for="data_nascimento">Data de Nascimento</label>
                        <input id="data_nascimento" type="date" class="form-control {{ $errors->has('data_nascimento') ? 'is-invalid' : '' }}"
                               name="data_nascimento" value="{{ old('data_nascimento') }}"
                               placeholder="Data de nascimento...">
                        @if($errors->has('data_nascimento'))
                            <div class="{{ $errors->has('data_nascimento') ? 'invalid-feedback' : ''}}">{{$errors->first('data_nascimento')}}</div>
                        @endif
                    </div>
                </div>
                @if(isset(Auth::user()->nivel))
                <div class="form-group row">
                    <div class="col">
                            <select class="form-control {{ $errors->has('nivel') ? 'is-invalid' : '' }}" name="nivel" id="nivel">
                                <option value="">Nivel...</option>
                                <option value="administrador">Administrador</option>
                                <option value="consulta">Consulta</option>
                            </select>
                            @if($errors->has('nivel'))
                                <div class="{{ $errors->has('nivel') ? 'invalid-feedback' : ''}}">{{$errors->first('nivel')}}</div>
                            @endif
                    </div>
                </div>
                @else
                    <input name="nivel" id="nivel" value="cliente" hidden>
                @endif
                <div class="form-group row">
                    <div class="col">
                        <input id="senha" type="password" class="form-control {{ $errors->has('senha') ? 'is-invalid' : '' }}"
                               name="senha" autocomplete="new-password"
                               placeholder="Senha...">
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
