@extends('layouts.app')


@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card border-0 shadow">
                <div class="card-body">
                    <h1>{{ config('app.name', 'Laravel') }}</h1>
                    <a href="/prestamos">Ver Prestamos</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


