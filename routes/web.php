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
Route::get('get-shop-sendo',['as'=>'html.test','uses'=>'Dom\HtmlController@getLinkShopSendo'] );
Route::get('get-product-sendo',['as'=>'html.product.sendo','uses'=>'Dom\HtmlController@getProductSendo'] );
Route::get('get-category-sendo',['as'=>'html.category.sendo','uses'=>'Dom\HtmlController@getCategorys'] );
Route::get('get-specific-sendo',['as'=>'html.category.sendo','uses'=>'Dom\HtmlController@getSpecifics'] );

Route::get('testinfo',['as'=>'html.test.info','uses'=>'Dom\HtmlController@getShopInfo']);
