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


//
//Route::name('admin.')->group(function() {
//
//    Route::resource('admin/users', 'AdminUsersController');
//});


//as will give the route a name

//uses serves the purpose to specify which method of which controller to call
Route::get('/post/{slug}', ['as'=>'home.post', 'uses'=>'AdminPostsController@post']);

Route::name('admin.')->middleware(['middleware'=>'admin'])->group(function (){

    Route::get('/admin', function (){

        return view('admin.index');
    });

    Route::resource('admin/users', 'AdminUsersController');

    Route::resource('admin/posts', 'AdminPostsController');

    Route::resource('admin/categories', 'AdminCategoriesController');

    Route::resource('admin/media', 'AdminMediasController');

    Route::resource('admin/comments','PostCommentsController');

    Route::resource('admin/comments/replies', 'CommentRepliesController');

});

Route::name('admin.')->middleware(['middleware'=>'auth'])->group(function (){

    Route::post('comment/reply', 'CommentRepliesController@createReply');

});

Route::delete('admin/delete/media','AdminMediasController@deleteMedia');

Route::resource('admin/media', 'AdminMediasController',['names'=>[

    'index'=>'admin.media.index',
    'create'=>'admin.media.create',
    'store'=>'admin.media.store',
    'edit'=>'admin.media.edt',

    ]]);


