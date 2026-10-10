<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>Add Students' Data</h1>

    <form action="/created" method="post">
        @csrf
        <label for="">Name</label>
        <input type="text" name="n"> <br> <br>

        <label for="">Age</label>
        <input type="number" name="a"> <br> <br>

        <label for="">City</label>
        <input type="text" name="c"> <br> <br>

        <button type="submit">Add Student</button>

    </form>
</body>
</html>