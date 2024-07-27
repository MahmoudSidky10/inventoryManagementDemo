<?php


// Admin Routes
Route::get('/', 'Admin\Auth\LoginController@index');
Route::get('/admin', 'Admin\Auth\LoginController@index');
Route::post('/admin-login', 'Admin\Auth\LoginController@login');
Route::post('/admin-logout', 'Admin\Auth\LoginOutController@index')->name('logout');
