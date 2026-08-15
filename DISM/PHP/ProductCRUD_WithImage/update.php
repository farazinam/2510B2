<?php
$conn = mysqli_connect("localhost", "root", "", "miniproject");
$getId = $_GET["id"];

$sel = "SELECT * FROM product WHERE product_id = '$getId'";
$q = mysqli_query($conn, $sel);

$fetch = mysqli_fetch_array($q);
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
        <input type="text" name="proname" value="<?php echo $fetch['product_name'] ?>"> <br>

        <label for="">Product Price</label>
        <input type="text" name="proprice" value="<?php echo $fetch['product_price'] ?>"> <br>

        <label for="">Product Description</label>
        <input type="text" name="prodesc" value="<?php echo $fetch['product_description'] ?>"> <br>

        <label for="">Product Image</label>
        <input type="file" name="proimage"> <br>

        <button name="updProduct">Uppdate Product</button>

    </form>
</body>
</html>

<?php
if(ISSET($_REQUEST["updProduct"])){
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

        $upd = "UPDATE `product` SET `product_name`='$pn',`product_price`='$pp',`product_description`='$pd',
        `product_image`='$imgname' WHERE product_id = '$getId'";
    
        $q = mysqli_query($conn, $upd);

        if($q){
            echo "Product Updated";
        }
    }
    else{
        $upd = "UPDATE `product` SET `product_name`='$pn',`product_price`='$pp',`product_description`='$pd'
         WHERE product_id = '$getId'";
    
        $q = mysqli_query($conn, $upd);

        if($q){
            echo "Product Updated";
        }
    }

}
?>