<?php

use Gondr\DB;
use Gondr\Route;

Route::get("/","MainController@index");
Route::get("user/logout","UserController@logout");

if(__SIGN){
	Route::get("venue","MainController@venue");
	Route::get("transportation","MainController@transportation");
}

Route::post("user/duplicate","UserController@duplicate");
Route::post("user/join","UserController@join");
Route::post("user/login","UserController@login");
Route::post("trans/resert/insert","MainController@trans_insert");