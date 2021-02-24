<?php

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



Route::group(['middleware' => 'revalidate'], function()
{
Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');
// Route::get('/', 'DashboardController@index', function () {
//     return Auth::user();
// })->name('dashboard');


// Route::get('/login', function (){
//     return view('auth.login');
// });

Route::get('/register', 'Auth\AuthController@getRegister')->name('register');

Route::post('/register', 'Auth\AuthController@postRegister');
Route::get('/login', 'Auth\AuthController@getLogin')->middleware('guest')->name('login');

// Route::group(['middleware' => 'revalidate'], function (){
    
//     Auth::routes();
//     Route::get('/login', 'Auth\AuthController@getLogin')->name('login'); ## route yang perlu auth
// });

Route::post('/login', 'Auth\AuthController@postLogin')->middleware('guest');

Route::get('/', 'DashboardController@index')->middleware('auth')->name('dashboard');

Route::get('/logout', 'Auth\AuthController@logout')->middleware('auth')->name('logout');


Route::resource('products', 'ProductController')->middleware('auth');

Route::get('/upload', 'ProductFotoController@uploadfoto')->middleware('auth')->name('upload');
Route::resource('productcategory', 'ProductCategoryController')->middleware('auth');

Route::resource('admin', 'AdminController')->middleware('auth');
Route::resource('user', 'UserController')->middleware('auth');

Route::resource('transaction', 'TransactionController')->middleware('auth');
Route::resource('laporan', 'LaporanController')->middleware('auth');
Route::get('report', 'LaporanController@reportexport')->middleware('auth');
Route::post('report/export', 'LaporanController@exportTransaction')->middleware('auth');

Route::get('transaction/{id}/set-status', 'TransactionController@setStatus')->middleware('auth')
    ->name('transaction.status');
});