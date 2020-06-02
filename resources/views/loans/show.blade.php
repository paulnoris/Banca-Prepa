@extends('layouts.app')


@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card border-0 shadow">
                <div class="card-body">
                    <h4><b> Cliente: </b>{{ $client->name }}</h4>
                    <h4><b>No. Pago: </b>{{ $loan->paymentDeadline->payment_deadline }}</h4>
                    <table class="table table-hover table-striped">
                        <thead>
                            <tr>
                                <th>No. Pago</th>
                                <th>Fecha</th>
                                <th>Préstamo</th>
                                <th>Interés</th>
                                <th>Abono</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $totalPayment = 0;
                                $totalTax = 0;
                                $totalDebtPayment = 0;
                            @endphp
                            @for ($i = 1; $i <= $loan->paymentDeadline->payment_deadline; $i++)
                                <tr>
                                    <td>{{ $i }}</td>
                                    <td>{{ $loan->nextPayment($loan->created_at, $i) }}</td>
                                    <td>${{ $loan->payment() }}</td>
                                    <td>${{ $loan->tax() }}</td>
                                    <td>${{ $loan->debt_payment() }}</td>
                                </tr>
                                @php
                                    $totalPayment = $totalPayment + $loan->payment();
                                    $totalTax = $totalTax + $loan->tax();
                                    $totalDebtPayment = $totalDebtPayment + $loan->debt_payment();
                                @endphp
                            @endfor
                        </tbody>
                        <tfoot>
                            <tr>
                                <th></th>
                                <th>Totales:</th>
                                <th>${{ number_format(round($totalPayment),2) }}</th>
                                <th>${{ number_format($totalTax,2) }}</th>
                                <th>${{ number_format($totalDebtPayment,2) }}</th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
