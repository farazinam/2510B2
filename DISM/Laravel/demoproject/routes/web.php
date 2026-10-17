<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;

Route::get('/', [StudentController::class, 'wel']);
Route::get('/contact', [StudentController::class, 'contact']);

Route::get('/create', [StudentController::class, 'create']);
Route::post('/created', [StudentController::class, 'created']);

Route::get('/read', [StudentController::class, 'read']);

Route::get('/delete/{identity}', [StudentController::class, 'delete'])->name('del');

Route::get('/edit/{identity}', [StudentController::class, 'edit'])->name('edit');
Route::post('/update/{id}', [StudentController::class, 'update'])->name('update');