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

    public function read(){
        $fetch = Student::all();
        $details = compact('fetch');
        return view('read')->with($details);
    }

    public function delete($identity){
        $delId = Student::find($identity);
        $delId->delete();
        return back()->withYes("Deleted Successful");
        // return view('read');
    }

    public function edit($identity){
        $id = Student::find($identity);
        return view('edit', ['updID' => $id]);
    }

    public function update($id, Request $req){
        $update = Student::find($id);
        $update->name = $req['n'];
        $update->age = $req['a'];
        $update->city = $req['c'];
        $update->save();
        return redirect('read');
    }
}
