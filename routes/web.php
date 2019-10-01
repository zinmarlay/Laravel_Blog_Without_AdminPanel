<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/posts','PostController@index');
Route::get('/','PostController@index');
Route::get('/home','PostController@index');

Route::get('posts/add','PostController@add');//get method for html form
Route::post('posts/add','PostController@create');// post method for codes

Route::get('/posts/edit/{id}','PostController@edit');
Route::post('/posts/edit/{id}','PostController@update');
Route::get('/posts/delete/{id}','PostController@delete');

Route::get('/posts/view/{id}','PostController@view');
Route::post('/comments/add','CommentController@create');

Auth::routes();


