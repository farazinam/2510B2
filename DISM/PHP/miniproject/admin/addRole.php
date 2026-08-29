
<?php
include("config.php");
include("header.php");
?>

            <!-- Form Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">

                    <div class="col-sm-12 col-xl-6">
                        <div class="bg-light rounded h-100 p-4">
                            <h6 class="mb-4">Add Role</h6>
                            <form method="post">
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Role Name</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1"
                                        aria-describedby="emailHelp" name="role">  
                                </div>

                                
                                <button type="submit" class="btn btn-primary" name="rolebtn">Add Role</button>
                            </form>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!-- Form End -->

<?php
include "footer.php";

if(ISSET($_POST['rolebtn'])){
    $rolename = $_POST['role'];

    $ins = "INSERT INTO `role` (role_name) 
    VALUES ('$rolename')";

    $done = mysqli_query($conn, $ins);

    if($done){
        echo "Role Added Successfully!";
    }

}
?>