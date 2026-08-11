<?php
$conn = mysqli_connect("localhost", "root", "", "miniproject")
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Add product</h1>
    <form method="post" enctype="multipart/form-data">

        <label for="">Product Name</label>
        <input type="text" name="proname"> <br>

        <label for="">Product Price</label>
        <input type="text" name="proprice"> <br>

        <label for="">Product Description</label>
        <input type="text" name="prodesc"> <br>

        <label for="">Product Image</label>
        <input type="file" name="proimage"> <br>

        <button name="addProduct">Add Product</button>

    </form>
</body>
</html>

<?php
if(ISSET($_REQUEST["addProduct"])){
    $pn = $_REQUEST["proname"];
    $pp = $_REQUEST["proprice"];
    $pd = $_REQUEST["prodesc"];
    $pi = $_FILES["proimage"];

    $imgname = $pi["name"];
    $imgtmpname = $pi["tmp_name"];
    // echo $pn;
    // echo $pp;
    // echo $pd;
    // print_r($pi);

    $folder = 'images/' . $imgname;

    if(is_uploaded_file($imgtmpname)){
        move_uploaded_file($imgtmpname, $folder);
    }

    $ins = "INSERT INTO `product`(`product_name`, `product_price`, `product_description`, `product_image`) 
    VALUES ('$pn','$pp','$pd','$imgname')";


}
?>