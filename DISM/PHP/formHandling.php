<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Form Handling</h1>
    <!-- <form action="get.php" method="get">
        <label for="">Name</label>
        <input type="text" name="username">
        <button>Get Name</button>
    </form> -->

    <!-- <form action="get.php" method="post">
        <label for="">Name</label>
        <input type="text" name="username">
        <button>Get Name</button>
    </form> -->

    <form method="get">

        <label for="">User Name</label>
        <input type="text" name="username" placeholder="UserName"> <br>

        <label for="">Password</label>
        <input type="text" name="username" placeholder="Password"> <br> 

        <button name="getBtn">Get Name</button>
        
    </form>
</body>
</html>

<?php
if(ISSET($_GET["getBtn"])){
    $un = $_GET["username"];
    echo $un;
}
?>