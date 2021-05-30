<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\paymentController;
use App\Http\Controllers\Auth\OAuthController;
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

// Route::get('/welcome', function () {
//     return view('welcome');
// });
Route::get('payment-success', [PaymentController::class, 'paymentSuccess']);
Route::post('oauth/{driver}', [OAuthController::class, 'redirect']);
Route::get('oauth/{driver}/callback', [OAuthController::class, 'handleCallback'])->name('oauth.callback');
