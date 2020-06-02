<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Loan extends Model
{
    protected $table = 'loans';

    protected $fillable = [
        'user_id',
        'amount_id',
        'payment_deadline_id',
    ];

    public function user() {

		return $this->belongsTo(User::class);
    }

    public function amount() {

		return $this->belongsTo(Amount::class);
    }

    public function paymentDeadline() {

		return $this->belongsTo(PaymentDeadline::class);
    }

    public function payment() {

        return number_format($this->amount->amount / $this->paymentDeadline->payment_deadline,2);
	}

    public function tax() {

        return number_format($this->payment() * 0.11,2);
	}

    public function debt_payment() {

        return number_format($this->payment() +  $this->tax(),2);
    }

    public function nextPayment($created_at, $payment_deadline) {

        $days = $payment_deadline * 15;

        return Carbon::parse($created_at)->addDays($days)->toDateString();
	}
}
