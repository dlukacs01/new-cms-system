<?php

Route::get('/roles', 'RoleController@index')->name('roles.index'); // roles dashboard (read)

Route::post('/roles', 'RoleController@store')->name('roles.store'); // creating roles in db (create)

Route::delete('/roles/{role}/destroy', 'RoleController@destroy')->name('roles.destroy'); // roles/crud/delete

Route::get('/roles/{role}/edit', 'RoleController@edit')->name('roles.edit'); // roles/crud/update

Route::put('/roles/{role}/update', 'RoleController@update')->name('roles.update'); // roles/crud/update

Route::put('/roles/{role}/attach', 'RoleController@attach_permission')->name('role.permission.attach');

Route::put('/roles/{role}/detach', 'RoleController@detach_permission')->name('role.permission.detach');

?>
