<?php
$conn = mysqli_connect("localhost", "root", "", "miniproject");
$getId = $_GET["id"];

$sel = "SELECT * FROM category WHERE category_id = '$getId'";
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
    <h1>Edit Category</h1>

    <form method="post">
        <label for="">Edit Category</label>
        <input type="text" name="category" value="<?php echo $fetch["category_name"] ?>">
        <button name="updbtn">Update Category</button>
    </form>
</body>
</html>

<?php
if(ISSET($_POST['updbtn'])){
    $cat = $_POST['category'];

    $upd = "UPDATE category SET category_name = '$cat' WHERE category_id = $getId";
    $q = mysqli_query($conn, $upd);

    if($q){
        echo "Record Updated!";
    }
}

?>