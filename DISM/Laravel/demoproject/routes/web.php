<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;

Route::get('/', [StudentController::class, 'wel']);
Route::get('/contact', [StudentController::class, 'contact']);