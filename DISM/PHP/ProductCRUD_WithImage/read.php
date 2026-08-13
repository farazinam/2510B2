<?php
$conn = mysqli_connect("localhost", "root", "", "miniproject");

$sel = "SELECT * FROM product";
$q = mysqli_query($conn, $sel);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>All Product</h1>

    <table>
        <tr>
            <th>Product ID</th>
            <th>Product Name</th>
            <th>Product Price</th>
            <th>Product Description</th>
            <th>Product Image</th>
            <th>Action</th>
        </tr>

        <?php while($fetch = mysqli_fetch_array($q)){ ?>
        <tr>
            <td> <?php echo $fetch["product_id"] ?> </td>
            <td> <?php echo $fetch["product_name"] ?> </td>
            <td> <?php echo $fetch["product_price"] ?> </td>
            <td> <?php echo $fetch["product_description"] ?> </td>
            <td> <img src="images/<?php echo $fetch["product_image"] ?>" alt="" width="100px"> </td>
            <td> <a href="delete.php?id=<?php echo $fetch["product_id"] ?>">Delete</a> </td>
            <td> <a href="update.php?id=<?php echo $fetch["product_id"] ?>">Edit</a> </td>
        </tr>
        <?php } ?>
        
    </table>
</body>
</html>