<?php
include("config.php");
$getId = $_GET["id"];

$del = "DELETE FROM product WHERE product_id = '$getId'";
$q = mysqli_query($conn, $del);

if($q){
    echo "<script>
    alert('record deleted')
    window.location.href = 'viewProduct.php';
    </script>";
}

?>