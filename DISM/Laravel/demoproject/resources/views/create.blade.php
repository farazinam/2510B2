@extends('layouts.app')

@section('content')

    <h1 class="text-center">Add Students' Data</h1>

    <form action="/created" method="post" class="w-50 mx-auto">
        @csrf
        <label for="">Name</label>
        <input type="text" name="n" class="form-control"> <br>

        <label for="">Age</label>
        <input type="number" name="a" class="form-control"> <br>

        <label for="">City</label>
        <input type="text" name="c" class="form-control"> <br>

        <button type="submit" class="btn btn-success">Add Student</button>

    </form>

@endsection