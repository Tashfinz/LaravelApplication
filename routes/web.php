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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('logout', '\App\Http\Controllers\Auth\LoginController@logout');

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('admin/users', 'AdminUsersController');

Route::get('/admin', function (){

    return view('admin.index');
});
//
//Route::name('admin.')->group(function() {
//
//    Route::resource('admin/users', 'AdminUsersController');
//});

Route::name('admin.')->middleware(['middleware'=>'admin'])->group(function (){

    Route::resource('admin/users', 'AdminUsersController');
    Route::resource('admin/posts', 'AdminPostsController');

});
