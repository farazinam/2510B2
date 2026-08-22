<?php
include("config.php");
include "header.php";

$sel = "SELECT * FROM product";
$q = mysqli_query($conn, $sel);

?>
    
<!-- Table Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                   
                    <div class="col-sm-12 col-xl-12">
                        <div class="bg-light rounded h-100 p-4">
                            <h6 class="mb-4">All Products</h6>
                            <table class="table table-hover">
                                <thead class="bg-dark">
                                    <tr>
                                        <th scope="col">Product ID</th>
                                        <th scope="col">Product Name</th>
                                        <th scope="col">Product Price</th>
                                        <th scope="col">Product Description</th>
                                        <th scope="col">Product Image</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php while($fetch = mysqli_fetch_array($q)){ ?>
                                    <tr>
                                        <th scope="row"> <?php echo $fetch[0] ?> </th>
                                        <td> <?php echo $fetch[1] ?> </td>
                                        <td> <?php echo $fetch[2] ?> </td>
                                        <td> <?php echo $fetch[3] ?> </td>
                                        <td> <img src="images/<?php echo $fetch[4] ?>" alt="" width="100px"> </td>
                                        <td>
                                            <a href="updateProduct.php?id=<?php echo $fetch["product_id"] ?>"  class="btn btn-warning"><i class="fa fa-edit"></i></a>
                                            <a href="deleteProduct.php?id=<?php echo $fetch["product_id"] ?>"  class="btn btn-danger"><i class="fa fa-trash"></i></a>
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