<?php

use Illuminate\Support\Facades\Route;



Auth::routes();

Route::get('/', 'HomeController@index')->name('home'); // front end index

// reaching pages only through authentication
Route::middleware('auth')->group(function (){

    Route::get('/admin', 'AdminsController@index')->name('admin.index'); // back end (admin) index


});
