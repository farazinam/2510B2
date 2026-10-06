<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class StudentController extends Controller
{
    public function wel(){
        return view('welcome');
    }
    public function contact(){
        return view('contact');
    }
}
