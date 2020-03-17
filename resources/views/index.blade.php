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
                    <a class="lightbox" href="../images/park.jpg">
                        <img src="../images/park.jpg" alt="Park">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="../images/bridge.jpg">
                        <img src="../images/bridge.jpg" alt="Bridge">
                    </a>
                </div>
                <div class="col-sm-12 col-md-4">
                    <a class="lightbox" href="../images/tunnel.jpg">
                        <img src="../images/tunnel.jpg" alt="Tunnel">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="../images/coast.jpg">
                        <img src="../images/coast.jpg" alt="Coast">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="../images/rails.jpg">
                        <img src="../images/rails.jpg" alt="Rails">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="../images/traffic.jpg">
                        <img src="../images/traffic.jpg" alt="Traffic">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="../images/rocks.jpg">
                        <img src="../images/rocks.jpg" alt="Rocks">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="../images/benches.jpg">
                        <img src="../images/benches.jpg" alt="Benches">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="../images/sky.jpg">
                        <img src="../images/sky.jpg" alt="Sky">
                    </a>
                </div>
            </div>

        </div>
    </div>
@endsection
