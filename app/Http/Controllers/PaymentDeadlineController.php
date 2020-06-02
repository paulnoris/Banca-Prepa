<?php

namespace App\Http\Controllers;

use App\payment_deadline;
use Illuminate\Http\Request;

class PaymentDeadlineController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\payment_deadline  $payment_deadline
     * @return \Illuminate\Http\Response
     */
    public function show(payment_deadline $payment_deadline)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\payment_deadline  $payment_deadline
     * @return \Illuminate\Http\Response
     */
    public function edit(payment_deadline $payment_deadline)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\payment_deadline  $payment_deadline
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, payment_deadline $payment_deadline)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\payment_deadline  $payment_deadline
     * @return \Illuminate\Http\Response
     */
    public function destroy(payment_deadline $payment_deadline)
    {
        //
    }
}
