<?php
include("config.php");
include "header.php";
$getId = $_GET["id"];

$sel = "SELECT * FROM category WHERE category_id = '$getId'";
$q = mysqli_query($conn, $sel);

$fetch = mysqli_fetch_array($q);
?>
            <!-- Form Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    <div class="col-sm-12 col-xl-6">
                        <div class="bg-light rounded h-100 p-4">
                            <h6 class="mb-4">Add Category</h6>
                            <form method="post">
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Category Name</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1"
                                        aria-describedby="emailHelp" name="category" value="<?php echo $fetch["category_name"] ?>">  
                                </div>                      
                                <button type="submit" class="btn btn-primary" name="updbtn">Add Category</button>
                            </form>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!-- Form End -->
<?php
if(ISSET($_POST['updbtn'])){
    $cat = $_POST['category'];

    $upd = "UPDATE category SET category_name = '$cat' WHERE category_id = $getId";
    $q = mysqli_query($conn, $upd);

    if($q){
        echo "Record Updated!";
    }
}
include "footer.php";
?>