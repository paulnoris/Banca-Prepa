<?php

use App\PaymentDeadline;
use Illuminate\Database\Seeder;

class PaymentDeadlineSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        PaymentDeadline::create([
            'payment_deadline' => 6,
        ]);

        PaymentDeadline::create([
            'payment_deadline' => 12,
        ]);

        PaymentDeadline::create([
            'payment_deadline' => 18,
        ]);

        PaymentDeadline::create([
            'payment_deadline' => 24,
        ]);
    }
}
