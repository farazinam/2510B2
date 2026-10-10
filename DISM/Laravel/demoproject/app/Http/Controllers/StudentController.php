<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;

class StudentController extends Controller
{
    public function wel(){
        return view('welcome');
    }
    public function contact(){
        return view('contact');
    }

    public function create(){
        return view('create');
    }

    public function created(Request $req){
        $create = new Student();
        $create->name = $req['n'];
        $create->age = $req['a'];
        $create->city = $req['c'];
        $create->save();
        return view('create');
    }
}
