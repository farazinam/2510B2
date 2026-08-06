<?php
$conn = mysqli_connect("localhost", "root", "", "miniproject");
// if($conn){
//         echo "Database Connected!";
//     }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Add Category</h1>

    <form method="post">
        <label for="">Add Category</label>
        <input type="text" name="category">
        <button name="catbtn">Add Category</button>
    </form>
</body>
</html>

<?php
if(ISSET($_POST['catbtn'])){
    $catname = $_POST['category'];

    $ins = "INSERT INTO category (category_name) 
    VALUES ('$catname')";

    $done = mysqli_query($conn, $ins);

    if($done){
        echo "Category Added Successfully!";
    }

}
?>