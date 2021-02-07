<?php

Route::get('/permissions', 'PermissionController@index')->name('permissions.index');

Route::post('/permissions', 'PermissionController@store')->name('permissions.store'); // creating permissions in db (create)

Route::delete('/permissions/{permission}/destroy', 'PermissionController@destroy')->name('permissions.destroy'); // roles/crud/delete

Route::get('/permissions/{permission}/edit', 'PermissionController@edit')->name('permissions.edit'); // roles/crud/update

Route::put('/permissions/{permission}/update', 'PermissionController@update')->name('permissions.update'); // permissions/crud/update

?>
