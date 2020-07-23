<?php

use Gondr\DB;
use Gondr\Route;

Route::get("/","MainController@index");
Route::get("user/logout","UserController@logout");

if(__SIGN){
	Route::get("venue","MainController@venue");
	Route::get("transportation","MainController@transportation");

	if($_SESSION['user']->id == "admin"){
		Route::get("admin/transportation","MainController@admin_transportation");
		Route::get("admin/transportation/manager","MainController@admin_transportation_manager");
		Route::get("admin/venue","MainController@admin_venue");
		Route::get("admin/venue/manager","MainController@admin_venue_manager");


		Route::post("admin/venue/delete","MainController@venue_delete");
	} else {
		Route::get("admin/transportation","MainController@admin_401");
		Route::get("admin/transportation/manager","MainController@admin_401");
		Route::get("admin/venue","MainController@admin_401");
		Route::get("admin/venue/manager","MainController@admin_401");
	}
} else {	
	Route::get("admin/transportation","MainController@admin_401");
	Route::get("admin/transportation/manager","MainController@admin_401");
	Route::get("admin/venue","MainController@admin_401");
	Route::get("admin/venue/manager","MainController@admin_401");
}

Route::post("user/duplicate","UserController@duplicate");
Route::post("user/join","UserController@join");
Route::post("user/login","UserController@login");
Route::post("trans/resert/insert","MainController@trans_insert");
Route::post("reservation/insert","MainController@reserve");