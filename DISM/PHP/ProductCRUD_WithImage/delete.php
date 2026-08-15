<?php
$conn = mysqli_connect("localhost", "root", "", "miniproject");
$getId = $_GET["id"];

$del = "DELETE FROM product WHERE product_id = '$getId'";
$q = mysqli_query($conn, $del);

if($q){
    echo "Record Deleted!";
}

?>