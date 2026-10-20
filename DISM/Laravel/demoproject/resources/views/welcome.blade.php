@extends('layouts.app')


@section('content')

    <h1>Welcome to Laravel</h1>

    {{"Hello"}}

    @php
    $name = "Faraz";
    @endphp

    {{$name}}

    {!!"<h1>Hello World!</h1>"!!}
    
    @php
    $age = 21;
    @endphp

    @if($age > 18)
    {{"You are Elder"}}
    @else
    {{"NOT Elder"}}
    @endif
    
@endsection