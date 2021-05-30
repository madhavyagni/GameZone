<?php

use App\Http\Controllers\Auth\ForgotPasswordController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\cartController;
use App\Http\Controllers\adminController;
use App\Http\Controllers\paymentController;
use App\Http\Controllers\wishlistController;
use App\Http\Controllers\ordersController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\OAuthController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Auth\ResetPasswordController;
use App\Http\Controllers\Auth\UserController;
use App\Http\Controllers\Auth\VerificationController;
use App\Http\Controllers\Settings\PasswordController;
use App\Http\Controllers\Settings\ProfileController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group(['middleware' => 'auth:api'], function () {
    Route::post('logout', [LoginController::class, 'logout']);

    Route::get('user', [UserController::class, 'current']);

    Route::patch('settings/profile', [ProfileController::class, 'update']);
    Route::patch('settings/password', [PasswordController::class, 'update']);
    Route::get('basket', [cartController::class, 'index']);
    Route::get('saved', [wishlistController::class, 'index']);
    Route::get('ordered', [ordersController::class, 'ordered']);
    Route::get('orderss', [adminController::class, 'orderss']);
    Route::post('cart', [cartController::class, 'store']);
    Route::post('wishlist', [wishlistController::class, 'store']);
    Route::get('count', [cartController::class, 'getCount']);
    Route::post('removeItem', [cartController::class, 'removeItem']);
    Route::post('incCount', [cartController::class, 'incCount']);
    Route::post('decCount', [cartController::class, 'decCount']);
    Route::post('removeItemOrders', [ordersController::class, 'removeItemOrders']);
    Route::post('removeList', [wishlistController::class, 'removeList']);
    Route::post('removeListAdmin', [adminController::class, 'removeListAdmin']);
    Route::post('cancelOrdere', [ordersController::class, 'cancelOrdere']);
    Route::post('delOrder', [adminController::class, 'delOrder']);
    Route::post('orders', [ordersController::class, 'orders']);
    Route::get('order/{id}/{id2}', [ordersController::class, 'orderDetails']);
    Route::get('order2/{id}/{id2}', [ordersController::class, 'orderDetails2']);
    Route::get('verifyAdmin', [ordersController::class, 'verifyAdmin']);
    Route::post('storeProduct', [adminController::class, 'storeProduct']);
    Route::get('getProduct/{id}', [adminController::class, 'getProduct']);
    Route::get('getOrder/{id}', [adminController::class, 'getOrder']);
    Route::post('editProduct/{id}', [adminController::class, 'editProduct']);
    Route::post('editOrder/{id}', [adminController::class, 'editOrder']);
    Route::post('onlinePay', [paymentController::class, 'onlinePay']);
    Route::get('paymentSsuccess', [PaymentController::class, 'paymentSuccess']);
});

Route::group(['middleware' => 'guest:api'], function () {
    Route::post('login', [LoginController::class, 'login']);
    Route::post('register', [RegisterController::class, 'register']);

    Route::post('password/email', [ForgotPasswordController::class, 'sendResetLinkEmail']);
    Route::post('password/reset', [ResetPasswordController::class, 'reset']);

    Route::post('email/verify/{user}', [VerificationController::class, 'verify'])->name('verification.verify');
    Route::post('email/resend', [VerificationController::class, 'resend']);

    Route::post('oauth/{driver}', [OAuthController::class, 'redirect']);
    Route::get('oauth/{driver}/callback', [OAuthController::class, 'handleCallback'])->name('oauth.callback');
});

Route::get('showProducts', [HomeController::class, 'index']);
Route::get('view/{id}', [HomeController::class, 'getDetails']);
Route::get('showGcards', [HomeController::class, 'showGcards']);
Route::get('showAccessories', [HomeController::class, 'showAccessories']);
Route::get('showCabinets', [HomeController::class, 'showCabinets']);
Route::get('showConsoles', [HomeController::class, 'showConsoles']);
Route::get('showCpu', [HomeController::class, 'showCpu']);
Route::get('showMonitors', [HomeController::class, 'showMonitors']);
Route::get('showPrebult', [HomeController::class, 'showPrebult']);
Route::get('showAsus', [HomeController::class, 'showAsus']);
Route::get('showMsi', [HomeController::class, 'showMsi']);
Route::get('showNvidia', [HomeController::class, 'showNvidia']);
Route::get('showSony', [HomeController::class, 'showSony']);
Route::get('showXbox', [HomeController::class, 'showXbox']);
Route::get('showLenovo', [HomeController::class, 'showLenovo']);
Route::get('showLogitech', [HomeController::class, 'showLogitech']);
Route::get('showZotac', [HomeController::class, 'showZotac']);
Route::get('bestSelling', [HomeController::class, 'bestSelling']);
Route::post('similar', [HomeController::class, 'similar']);
Route::get('search/{term}', [HomeController::class, 'search']);




