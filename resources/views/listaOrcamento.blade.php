@extends('layouts.app')
@section('title','Orçamentos')
@section('body')
    <div class="wrapper d-flex align-items-stretch container-sol-orcamento">
        @component('layouts.sidebar')
        @endcomponent
        {{--        <div class="card card-orcamento mt-3 pt-3">--}}
        <div id="content" class="p-4 p-md-5 pt-5">
            <div class="form-row">
                <div class="form-group">
                    <a class="btn btn-sm btn-outline-success" href="/orcamento/{{ $idHash }}">Novo</a>
                </div>
            </div>
            @foreach($orcamentos as $orcamento)
                <div class="card card-lista-orcamento mb-3" >
{{--                    <div class="row no-gutters">--}}
{{--                        <div class="col-md-12">--}}
                            <div class="card-body">
                                <div class="circulo-card">
                                    <i class="h5 far fa-clock"> Em análise</i>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-12">
                                        <p>{{ $orcamento->descricao }}</p>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-sm-6 col-md-3 ">
                                        <label>Data</label>
                                        <p>{{ date_format($orcamento->created_at,'d/m/Y') }}</p>
                                    </div>
                                    <div class="form-group col-sm-6 col-md-3 ">
                                        <label>Tamanho</label>
                                        <p>{{ $orcamento->tamanho_tattoo }}</p>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label>Parte Corpo</label>
                                        <p>{{ $orcamento->parte_corpo }}</p>
                                    </div>
                                </div>
                            </div>
{{--                        </div>--}}
{{--                    </div>--}}
                </div>
            @endforeach
        </div>

    </div>
@endsection
