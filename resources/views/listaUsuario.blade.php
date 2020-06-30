@extends('layouts.app')
@section('title','Usuários')
@section('body')
    <div class="wrapper d-flex align-items-stretch container-sol-orcamento">
        @component('layouts.sidebarGerencial')
        @endcomponent
        {{--        <div class="card card-orcamento mt-3 pt-3">--}}
        <div id="content" class="p-4 p-md-5 pt-5">
            <div class="text-center">
                <h2>Usuários</h2>
            </div>
            <table class="table text-white">
                <thead>
                    <tr>
                        <th scope="col">Ativo</th>
                        <th scope="col">Nome</th>
{{--                        <th scope="col">Status</th>--}}
                        <th scope="col">Nível</th>
                        <th scope="col">Email</th>
                        <th scope="col">Telefone</th>
{{--                        <th scope="col">Ação</th>--}}
                    </tr>
                </thead>
                <tbody>
                    @foreach($usuarios as $usuario)
                        <tr>
                            <th scope="row">
                                @if($usuario->status === 1)
                                    <i class="fa fa-check-circle-o text-success"></i>
                                @else
                                    <i class="fa fa fa-times-circle-o text-danger"></i>
                                @endif
                            </th>
                            <th scope="row" class="text-capitalize">{{$usuario->nome}}</th>
{{--                            <td>{{ $usuario->status }}</td>--}}
                            <td>{{ $usuario->nivel }}</td>
                            <td>{{ $usuario->email }}</td>
                            <td>{{ $usuario->telefone }}</td>
{{--                            <td>--}}
{{--                                <a class="fas fa-user-edit" href="/usuario/editar"></a>--}}
{{--                            </td>--}}
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection
