<?php

use App\Amount;
use Illuminate\Database\Seeder;

class AmountSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $amount = 100.00;
        for ($i=0; $i < 10; $i++) {
            Amount::create([
                'amount' => $amount,
            ]);
            $amount = $amount + 100.00;
        }
    }
}
