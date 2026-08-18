<?php
$conn = mysqli_connect("localhost", "root", "", "miniproject");
include "header.php";

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
    
<!-- Table Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                   
                    <div class="col-sm-12 col-xl-6">
                        <div class="bg-light rounded h-100 p-4">
                            <h6 class="mb-4">All Categories</h6>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">Category ID</th>
                                        <th scope="col">Category Name</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php while($fetch = mysqli_fetch_array($q)){ ?>
                                    <tr>
                                        <th scope="row"> <?php echo $fetch["category_id"] ?> </th>
                                        <td> <?php echo $fetch["category_name"] ?> </td>
                                        <td>
                                            <a href="update.php?id=<?php echo $fetch["category_id"] ?>"  class="btn btn-warning">Edit</a>
                                            <a href="update.php?id=<?php echo $fetch["category_id"] ?>"  class="btn btn-danger">Delete</a>
                                        </td>
                                    </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!-- Table End -->
</body>
</html>

<?php
include "footer.php";
?>