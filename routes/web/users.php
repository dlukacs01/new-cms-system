<?php

use Illuminate\Support\Facades\Route;

Route::put('/users/{user}/update','UserController@update')->name('user.profile.update'); // updating the user profile

Route::delete('/users/{user}/destroy', 'UserController@destroy')->name('user.destroy'); // deleting users

// only users with admin role can see the all users table
Route::middleware(['role:admin', 'auth'])->group(function (){

    Route::get('/users', 'UserController@index')->name('users.index'); // displaying all users

    Route::put('/users/{user}/attach', 'UserController@attach')->name('user.role.attach'); // attach role to a user
    Route::put('/users/{user}/detach', 'UserController@detach')->name('user.role.detach'); // detach role from a user

});

// It is using the UserPolicy
Route::middleware('can:view,user')->group(function(){
    Route::get('/users/{user}/profile','UserController@show')->name('user.profile.show'); // displaying the user profile
});

?>
