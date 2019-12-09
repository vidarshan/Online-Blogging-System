<?php include "includes/admin_header.php"; ?>

<?php
    if(isset($_SESSION['username'])){
        


    }
?>


    <div id="wrapper">

        <!-- Navigation -->
        <?php include "includes/admin_navigation.php"; ?>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                    <h1 class="page-header">
                            Welcome to admin page
                            <small>Author</small>
                        </h1>

                        <form action="" method="post" enctype="multipart/form-data">

<div class="form-group">
        
        <label for="author">Firstname</label>
        <input value="<?php echo $user_firstname; ?>" type="text" class="form-control" name="user_firstname">
            
    </div>


    <div class="form-group">
        
        <label for="post_status">Lastname</label>
        <input value="<?php echo $user_lastname; ?>" type="text" class="form-control" name="user_lastname">
            
    </div>


    <div class="form-group">
    
   <select name="user_role" id="">

   <option value="subscriber"><?php echo $user_role; ?></option>

   
            <?php

            //change user role if the user is a subscriber to admin but not from admin
            //admin remains admin.

                if($user_role == 'admin'){
                   echo "option value='subscriber'>Subscriber</option>"; 
                }else{
                    echo "<option value='admin'>Admin</option>";
                }
            ?>
            
            
           
        </select>
    </div>


    <div class="form-group">
        
        <label for="post_status">Username</label>
        <input value="<?php echo $username; ?>" type="text" class="form-control" name="username">
            
    </div>

    <!-- <div class="form-group">
        
        <label for="post_image">Post Image</label>
        <input type="file" name="image">
            
    </div> -->

    <div class="form-group">
        
        <label for="post_tags">Email</label>
        <input value="<?php echo $user_email; ?>" type="email" class="form-control" name="user_email">
            
    </div>

    <div class="form-group">
        
        <label for="post_tags">Password</label>
        <input value="<?php echo $user_password; ?>" type="password" class="form-control" name="user_password">
            
    </div>

    <div class="form-group">
        
    <input type="submit" value="Update User" name="edit_user" class="btn btn-primary ">
            
    </div>




</form>


                    </div>
                </div>
                <!-- /.row -->

            </div>


            
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->
<?php include "includes/admin_footer.php"; ?>