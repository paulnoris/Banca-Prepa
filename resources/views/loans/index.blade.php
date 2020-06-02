@extends('layouts.app')


@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card border-0 shadow">
                <div class="card-header">
                    <div class="row">
                        <div class="col">
                            <form action="/prestamos" method="GET">
                                <div class="form-group">
                                    <label for="">Cliente</label>
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" name="cliente" placeholder="Nombre del Cliente">
                                        <div class="input-group-append">
                                            <button class="btn btn-success" type="submit">Buscar</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for=""> - </label>
                                <button type="button" class="btn btn-primary form-control" data-toggle="modal" data-target="#exampleModal">
                                    Agregar Préstamo
                                </button>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="card-body">

                    <table class="table table-striped">
                        <thead class="table-secondary">
                            <tr>
                                <th>CLIENTE</th>
                                <th>MONTO DEL PRÉSTAMO</th>
                                <th>PLAZO</th>
                                <th>ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($loans as $loan)
                                <tr>
                                    <td class="text-center"> {{ $loan->user->name }}</td>
                                    <td class="text-center">$ {{ number_format($loan->amount->amount,2) }}</td>
                                    <td class="text-center"> {{ $loan->paymentDeadline->payment_deadline }}</td>
                                    <td class="text-center">
                                        <a href="{{ route('loans.show', ['loan' => $loan->id]) }}" class="btn btn-primary">
                                            <i class="fa fa-bars"></i>
                                        </a>
                                    </td>
                                </tr>
                            @empty
                                <tr class="table-warning">
                                    <td colspan="5" class="text-center">
                                        <i class="fa fa-exclamation-circle"></i> Ningún cliente encontrado
                                    </td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('modal-title') AGREGAR PRÉSTAMO @endsection

@section('modal-content')
    <form action="{{ route('loans.create') }}" method="POST" data-remote="true" id="modal-form">
        @csrf
        <div class="form-group">
            <label>Cliente</label>
            <select
            name="client"
            class="custom-select custom-select-lg mb-3"
            >
                @foreach ($clients as $client)
                    <option value="{{ $client->id }}" {{ old('client') == $client->id ? 'selected' : '' }}> {{ $client->name }}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label>Monto</label>
            <select
            name="amount"
            class="custom-select custom-select-lg mb-3"
            >
                @foreach ($amounts as $amount)
                    <option value="{{ $amount->id }}" {{ old('amount') == $amount->id ? 'selected' : '' }}> {{ $amount->amount }}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label>Plazo</label>
            <select
            name="payment_deadline"
            class="custom-select custom-select-lg mb-3"
            >
                @foreach ($paymentDeadlines as $paymentDeadline)
                    <option value="{{ $paymentDeadline->id }}" {{ old('payment_deadline') == $paymentDeadline->id ? 'selected' : '' }}> {{ $paymentDeadline->payment_deadline }}</option>
                @endforeach
            </select>
        </div>
    </form>
@endsection
@section('modal-footer')
    <button type="submit" class="btn btn-primary" form="modal-form">Registrar</button>
    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
@endsection
