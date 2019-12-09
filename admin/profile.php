<?php include "includes/admin_header.php"; ?>

<?php
    if(isset($_SESSION['username'])){
        
       $username =  $_SESSION['username'];

         $query = "SELECT * FROM users WHERE username = '{$username}' ";

         $select_user_profile_query = mysqli_query($connection, $query);

         while($row = mysqli_fetch_array($select_user_profile_query)){

            $user_id = $row['user_id'];
            $username = $row['username'];
            $user_password = $row['user_password'];
            $user_firstname= $row['user_firstname'];
            $user_lastname = $row['user_lastname'];
            $user_email = $row['user_email'];
           // $user_image = $row['user_image'];
            $user_role = $row['user_role'];
            //$user_date = $row['user_date'];
         }

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
        
    <input type="submit" value="Update Profile" name="update_profile" class="btn btn-primary ">
            
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