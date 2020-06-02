<?php

namespace App\Http\Controllers;

use App\User;
use App\Amount;
use App\Loan;
use App\PaymentDeadline;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class LoanController extends Controller
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

        $clients = User::all();
        $amounts = Amount::all();
        $paymentDeadlines = PaymentDeadline::all();
        $loans = [];

        if(request('cliente'))
        {

            if(User::where('name', request('cliente'))->first()){

                $loans = User::where('name', request('cliente'))->first()->loans;
            }
        }
        else
        {
            $loans = Loan::all();
        }



        // dd($users);
        return view('loans.index')->with([
            'clients' => $clients,
            'amounts' => $amounts,
            'paymentDeadlines' => $paymentDeadlines,
            'loans' => $loans,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function create()
    // {
    //     //
    // }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $new_loan = new Loan;
        $new_loan->user_id = $request->client;
        $new_loan->amount_id = $request->amount;
        $new_loan->payment_deadline_id = $request->payment_deadline;
        $new_loan->save();


        return redirect('/prestamos');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\loan  $loan
     * @return \Illuminate\Http\Response
     */
    public function show(loan $loan)
    {
        $loan = Loan::findOrFail($loan->id);
        $client = Loan::findOrFail($loan->id)->user;

        return view('loans.show', [
            'loan' => $loan,
            'client' => $client,
        ]);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\loan  $loan
     * @return \Illuminate\Http\Response
     */
    public function edit(loan $loan)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\loan  $loan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, loan $loan)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\loan  $loan
     * @return \Illuminate\Http\Response
     */
    public function destroy(loan $loan)
    {
        //
    }

    protected function validator(array $data)
    {
        return Validator::make($data, [
            'client' => 'required|exists:users,id',
            'amount' => 'required|exists:amounts,id',
            'payment_deadline' => 'required|exists:payment_deadlines,id',
        ]);
    }

}
