<?php

namespace App\Http\Controllers;

use App\amount;
use Illuminate\Http\Request;

class AmountController extends Controller
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
     * @param  \App\amount  $amount
     * @return \Illuminate\Http\Response
     */
    public function show(amount $amount)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\amount  $amount
     * @return \Illuminate\Http\Response
     */
    public function edit(amount $amount)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\amount  $amount
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, amount $amount)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\amount  $amount
     * @return \Illuminate\Http\Response
     */
    public function destroy(amount $amount)
    {
        //
    }
}
