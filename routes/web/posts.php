<?php

use Illuminate\Support\Facades\Route;

// this route doesnt require authentication
Route::get('/post/{post}', 'PostController@show')->name('post'); // blog-post page

// all the roues inside requires authentication
Route::middleware(['auth'])->group(function(){

    Route::get('/posts', 'PostController@index')->name('post.index'); // displaying all posts in admin
    Route::get('/posts/create', 'PostController@create')->name('post.create'); // create post form (inside admin)
    Route::post('/posts', 'PostController@store')->name('post.store'); // inserting post to db

    Route::delete('/posts/{post}/destroy', 'PostController@destroy')->name('post.destroy'); // deleting specific post
    Route::patch('/posts/{post}/update', 'PostController@update')->name('post.update'); // updating specific post

    Route::get('/posts/{post}/edit', 'PostController@edit')->name('post.edit');

});

?>
