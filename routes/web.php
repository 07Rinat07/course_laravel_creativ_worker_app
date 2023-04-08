<?php

use Illuminate\Support\Facades\Route;

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

//CRUD create - read - update - delete

Route::get('/workers', [\App\Http\Controllers\WorkerController::class, 'index']);

Route::get('/workers/show', [\App\Http\Controllers\WorkerController::class, 'show']);

Route::get('/workers/create', [\App\Http\Controllers\WorkerController::class, 'create']);

Route::get('/workers/update', [\App\Http\Controllers\WorkerController::class, 'update']);

Route::get('/workers/delete', [\App\Http\Controllers\WorkerController::class, 'delete']);

