<?php

use App\Amount;
use App\PaymentDeadline;
use App\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UserSeeder::class);

        DB::statement('SET FOREIGN_KEY_CHECKS = 0');

		User::truncate();
        User::flushEventListeners();

        Amount::truncate();
        Amount::flushEventListeners();

        PaymentDeadline::truncate();
        PaymentDeadline::flushEventListeners();


        $this->call(AmountSeeder::class);
        $this->call(PaymentDeadlineSeeder::class);

		$cantidadUsuario = 10;
        factory(User::class, $cantidadUsuario)->create();
    }
}
