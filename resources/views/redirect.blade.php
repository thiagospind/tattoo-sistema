@extends('layouts.app')
@section('title','Solicitação de Orçamentos')
@section('tipo_meta','refresh')
@section('meta','5;/')
@section('body')
    <div class="container mt-5 pt-5">
        <div class="card bg-dark text-white border-0 text-center">
            <img src="{{asset('/img/logo_nova.png')}}" class="card-img" alt="...">
            <div class="card-img-overlay" >
                <h1 class="card-title {{ $cor }} mt-5">{{ $titulo }}</h1>
                <h3 class="card-text mt-3">{{$msg}}</h3>
            </div>
            <div class="loader"></div>
        </div>
    </div>
@endsection
