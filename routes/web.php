<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::name('loans.index')->get('/prestamos', 'LoanController@index');
Route::name('loans.show')->get('/prestamos/{loan}', 'LoanController@show');
Route::name('loans.create')->post('/home', 'LoanController@store');
