@extends('layouts.app')

@section('content')

    <h1 style="border: 1px solid green" class="m-5 mt-2 p-2">All Students</h1>
    <table class="table w-75 mx-auto">
        <tr>
            <th> Student ID</th>
            <th> Student Name</th>
            <th> Student Age</th>
            <th> Student City</th>
            <th> Actions</th>
        </tr>
@foreach ($fetch as $f)
        <tr>
            <td>{{$f->id}}</td>
            <td>{{$f->name}}</td>
            <td>{{$f->age}}</td>
            <td>{{$f->city}}</td>
            <td>
                <a href="{{route('edit', ['identity'=>$f->id])}}" class="p-2 text-decoration-none text-warning">Edit</a>
                <a href="{{route('del', ['identity'=>$f->id])}}" class="p-2 text-decoration-none text-danger">Delete</a>
            </td>
        </tr>
@endforeach

    </table>

@endsection