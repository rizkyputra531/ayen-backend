<?php

use Illuminate\Http\Request;
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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::get('products', 'API\ProductController@all');

// VERSIONING API V1
Route::group(['prefix' => 'v1', 'middleware' => 'api'], function () {
    Route::post('register', 'API\RegisterController@registerUser');
    Route::post('login', 'API\RegisterController@login');
    Route::get('products/all', 'API\ProductController@getProduct');
    Route::get('category/all', 'API\ProductCategoryController@getProductCategory');
    Route::group(['prefix' => '/user', 'middleware' => 'auth:api-member'], function () {
        Route::get('profile', 'API\ProfileController@getProfile');
        Route::post('profile/edit', 'API\ProfileController@editProfile');
        Route::post('profile/email', 'API\ProfileController@editEmail');
        Route::post('profile/password', 'API\ProfileController@editPassword');
        Route::post('order', 'API\OrderController@addOrder');
        Route::get('transaksi', 'API\OrderController@getOrder');
        Route::post('keranjang/hapus', 'API\KeranjangController@removeKeranjang');
        Route::post('keranjang/add', 'API\KeranjangController@addKeranjang');
        Route::post('keranjang/increament', 'API\KeranjangController@increamentKeranjang');
        Route::post('keranjang/decreament', 'API\KeranjangController@decreamentKeranjang');
        Route::post('keranjang', 'API\KeranjangController@KeranjangUser');
    });
});