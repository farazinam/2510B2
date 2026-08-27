<?php
include("config.php");
include("header.php");

$sel = "SELECT * FROM category";
$q = mysqli_query($conn, $sel);
?>

            <!-- Form Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">

                    <div class="col-sm-12 col-xl-12">
                        <div class="bg-light rounded h-100 p-4">
                            <h6 class="mb-4">Add Product</h6>
                            <form method="post" enctype="multipart/form-data">
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Product Name</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1"
                                        aria-describedby="emailHelp" name="proname">  
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Product Price</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1"
                                        aria-describedby="emailHelp" name="proprice">  
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Product Description</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1"
                                        aria-describedby="emailHelp" name="prodesc">  
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Product Image</label>
                                    <input type="file" class="form-control" id="exampleInputEmail1"
                                        aria-describedby="emailHelp" name="proimage">  
                                </div>

                                 <select name="catid" class="form-select mb-3" aria-label="Default select example">
                                <option selected disabled>Select Category</option>

                                <?php while($fetch = mysqli_fetch_array($q)){ ?>
                                <option value="<?php echo $fetch[0] ?>"> <?php echo $fetch[1] ?> </option>
                                <?php } ?>


                            </select>

                                
                                <button type="submit" class="btn btn-primary" name="addProduct">Add Product</button>
                            </form>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!-- Form End -->

<?php
include "footer.php";

if(ISSET($_REQUEST["addProduct"])){
    $pn = $_REQUEST["proname"];
    $pp = $_REQUEST["proprice"];
    $pd = $_REQUEST["prodesc"];
    $cid = $_REQUEST["catid"];
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

        $ins = "INSERT INTO `product`(`product_name`, `product_price`, `product_description`, `product_image`, `category_id`) 
        VALUES ('$pn','$pp','$pd','$imgname', '$cid')";
    
        $q = mysqli_query($conn, $ins);

        if($q){
            echo "<script>
            alert('record inserted');
            window.location.href = 'viewProduct.php';
            </script>";
        }

    }

}
?>