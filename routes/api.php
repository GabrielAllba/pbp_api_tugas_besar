<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::post('/register', [App\Http\Controllers\Api\AuthController::class,'register']);
Route::post('/login', [App\Http\Controllers\Api\AuthController::class,'login']);

// Route::group(['middleware' => 'auth:api'], function (){
Route::get('/user', [App\Http\Controllers\Api\UserController::class, 'index']);
Route::get('/user/{id}', [App\Http\Controllers\Api\UserController::class, 'show']);
Route::put('/user/{id}', [App\Http\Controllers\Api\UserController::class, 'update']);

Route::get('/pemesanan', [App\Http\Controllers\Api\PemesananController::class, 'index']);
Route::post('/pemesanan', [App\Http\Controllers\Api\PemesananController::class, 'store']);
Route::get('/pemesanan/{id}', [App\Http\Controllers\Api\PemesananController::class, 'show']);
Route::put('/pemesanan/{id}', [App\Http\Controllers\Api\PemesananController::class, 'update']);
Route::get('/pemesanan/user/{id_user}', [App\Http\Controllers\Api\PemesananController::class, 'searchByUserId']);
Route::delete('/pemesanan/{id}', [App\Http\Controllers\Api\PemesananController::class, 'destroy']);

Route::get('/review', [App\Http\Controllers\Api\ReviewController::class, 'index']);
Route::post('/review', [App\Http\Controllers\Api\ReviewController::class, 'store']);
Route::get('/review/{id}', [App\Http\Controllers\Api\ReviewController::class, 'show']);
Route::delete('/review/{id}', [App\Http\Controllers\Api\ReviewController::class, 'destroy']);
Route::get('/review/user/{id_user}', [App\Http\Controllers\Api\ReviewController::class, 'searchByUserId']);
Route::put('/review/{id}', [App\Http\Controllers\Api\ReviewController::class, 'update']);

// });