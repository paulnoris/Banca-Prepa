<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLoansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('loans', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('user_id');
			$table->unsignedBigInteger('amount_id');
			$table->unsignedBigInteger('payment_deadline_id');

			$table->foreign('user_id')->references('id')->on('users');
			$table->foreign('amount_id')->references('id')->on('amounts');
			$table->foreign('payment_deadline_id')->references('id')->on('payment_deadlines');


            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('loans');
    }
}
