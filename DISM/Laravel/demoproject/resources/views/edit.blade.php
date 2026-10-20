@extends('layouts.app')

@section('content')

    <h1>Update Students' Data</h1>

    <form action="{{route('update', ['id' => $updID->id])}}" method="post">
        @csrf
        <label for="">Name</label>
        <input type="text" name="n" value="{{$updID->name}}"> <br> <br>

        <label for="">Age</label>
        <input type="number" name="a" value="{{$updID->age}}"> <br> <br>

        <label for="">City</label>
        <input type="text" name="c" value="{{$updID->city}}"> <br> <br>

        <button type="submit">Update Student</button>

    </form>

@endsection