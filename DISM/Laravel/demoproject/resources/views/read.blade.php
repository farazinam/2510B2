<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>All Students</h1>
    <table border="1">
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
                <a href="">Edit</a>
                <a href="">Delete</a>
            </td>
        </tr>
@endforeach

    </table>
</body>
</html>