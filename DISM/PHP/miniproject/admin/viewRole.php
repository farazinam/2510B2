<?php
include("config.php");
include "header.php";

$sel = "SELECT * FROM `role`";
$q = mysqli_query($conn, $sel);

?>
    
<!-- Table Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                   
                    <div class="col-sm-12 col-xl-12">
                        <div class="bg-light rounded h-100 p-4">
                            <h6 class="mb-4">All Roles</h6>
                            <table class="table table-hover">
                                <thead class="bg-dark">
                                    <tr>
                                        <th scope="col">Role ID</th>
                                        <th scope="col">Role Name</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php while($fetch = mysqli_fetch_array($q)){ ?>
                                    <tr>
                                        <th scope="row"> <?php echo $fetch[0] ?> </th>
                                        <td> <?php echo $fetch[1] ?> </td>
                                        <td>
                                            <a href="updateRole.php?id=<?php echo $fetch["role_id"] ?>"  class="btn btn-warning"><i class="fa fa-edit"></i></a>
                                            <a href="deleteRole.php?id=<?php echo $fetch["role_id"] ?>"  class="btn btn-danger"><i class="fa fa-trash"></i></a>
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