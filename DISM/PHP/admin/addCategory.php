
<?php
$conn = mysqli_connect("localhost", "root", "", "miniproject");

include("header.php");
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
                                        aria-describedby="emailHelp" name="category">  
                                </div>

                                
                                <button type="submit" class="btn btn-primary" name="catbtn">Add Category</button>
                            </form>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!-- Form End -->

<?php
include "footer.php";

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