@extends('layouts.app')
@section('title','Home')
@section('body')
    <div class="container gallery-container mt-5 pt-5">
        <div class="py-3 text-center">
            <h2>Trabalhos</h2>
        </div>

        <div class="tz-gallery">

            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="{{ asset('/img/trabalhos/750_5616 (1).jpg') }}">
                        <img src="{{ asset('/img/trabalhos/750_5616 (1).jpg') }}" alt="Trabalhos">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="{{ asset('/img/trabalhos/750_5637.jpg') }}">
                        <img src="{{ asset('/img/trabalhos/750_5637.jpg') }}" alt="Bridge">
                    </a>
                </div>
                <div class="col-sm-12 col-md-4">
                    <a class="lightbox" href="{{ asset('/img/trabalhos/750_5679.jpg') }}">
                        <img src="{{ asset('/img/trabalhos/750_5679.jpg') }}" alt="Bridge">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="{{ asset('/img/trabalhos/trab_2.jpg') }}">
                        <img src="{{ asset('/img/trabalhos/trab_2.jpg') }}" alt="Bridge">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="{{ asset('/img/trabalhos/trab_3.jpg') }}">
                        <img src="{{ asset('/img/trabalhos/trab_3.jpg') }}" alt="Bridge">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="{{ asset('/img/trabalhos/trab_3(2).jpg') }}">
                        <img src="{{ asset('/img/trabalhos/trab_3(2).jpg') }}" alt="Bridge">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="{{ asset('/img/trabalhos/trab_1.jpg') }}">
                        <img src="{{ asset('/img/trabalhos/trab_1.jpg') }}" alt="Bridge">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="{{ asset('/img/trabalhos/trab_4.jpg') }}">
                        <img src="{{ asset('/img/trabalhos/trab_4.jpg') }}" alt="Bridge">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="{{ asset('/img/trabalhos/trab_5.jpg') }}">
                        <img src="{{ asset('/img/trabalhos/trab_5.jpg') }}" alt="Bridge">
                    </a>
                </div>
            </div>

        </div>
    </div>
@endsection
