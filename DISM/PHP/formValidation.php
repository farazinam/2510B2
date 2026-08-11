<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="post">

        <label for="">Email</label>
        <input type="email" name="email"> <br>

        <label for="">Password</label>
        <input type="password" name="password"> <br>

        <button name="loginBtn">Login</button>

    </form>
</body>
</html>

<?php
if(ISSET($_REQUEST["loginBtn"])){
    $em = $_REQUEST["email"];
    $ps = $_REQUEST["password"];

    // echo $un;
    // echo $ps;

    if(empty($em)){
        echo "Email is Required";
    }
    else if(!filter_var($em, FILTER_VALIDATE_EMAIL)){
        echo "Email should be valid";
    }
    else if(empty($ps)){
        echo "Password is Required";
    }
    else if(!strlen($ps) >= 6){
        echo "Password should contains atleast 6 characters";
    }
    else{
        echo "Form Submitted!";
    }
}
?>