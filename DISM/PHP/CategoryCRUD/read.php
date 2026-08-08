<?php
$conn = mysqli_connect("localhost", "root", "", "miniproject");

$sel = "SELECT * FROM category";
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
    <h1>All Categories</h1>

    <table>
        <tr>
            <th>Category ID</th>
            <th>Category Name</th>
            <th>Action</th>
        </tr>

        <?php while($fetch = mysqli_fetch_array($q)){ ?>
        <tr>
            <td> <?php echo $fetch["category_id"] ?> </td>
            <td> <?php echo $fetch["category_name"] ?> </td>
            <td> <a href="delete.php?id=<?php echo $fetch["category_id"] ?>">Delete</a> </td>
            <td> <a href="update.php?id=<?php echo $fetch["category_id"] ?>">Edit</a> </td>
        </tr>
        <?php } ?>
        
    </table>
</body>
</html>