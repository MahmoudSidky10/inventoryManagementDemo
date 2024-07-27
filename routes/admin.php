<?php


Route::get('/dash', 'Dashboard\IndexController@index');
Route::get('/logout', 'Dashboard\IndexController@logout');
Route::resource('/clients', 'Client\IndexController')->names("admin.clients");
Route::resource('/ProductProperties', 'ProductProperty\IndexController')->names("admin.ProductProperties");
Route::resource('/products', 'Product\IndexController');
Route::get('/low-quantity-products', 'Product\IndexController@lowQuantityProducts');
Route::resource('/products.images', 'Product\ImageController');
Route::resource('/products.options', 'Product\OptionController');
Route::resource('/products.views', 'Product\ViewController');

Route::resource('/categories', 'Content\CategoryController')->names("admin.categories");
Route::resource('/categories.subCategories', 'Content\SubCategoryController')->names("admin.subCategories");

Route::resource('/permissions', 'Content\PermissionsController')->names("admin.permissions");
Route::resource('/permission-categories', 'Content\PermissionCategoriesController')->names("admin.permission-categories")->except('show');
Route::resource('/roles', 'Content\RolesController')->names("admin.roles");
Route::post('/get-selected-check', 'Content\RolesController@getSelectedCheck');

// Ajax Controller
Route::post('/getCategories', 'AjaxController@getCategories');
Route::post('/getDesigns', 'AjaxController@getDesigns');




