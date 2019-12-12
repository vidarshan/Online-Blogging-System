<?php

    if(isset($_GET['edit_user'])){

        $the_user_id = $_GET['edit_user'];
    }

$query = "SELECT * FROM users WHERE user_id = {$the_user_id} ";
        $select_users_by_id = mysqli_query($connection, $query);
           
        while($row = mysqli_fetch_assoc($select_users_by_id)){
            $user_id = $row['user_id'];
            $username = $row['username'];
            $user_firstname = $row['user_firstname'];
            $user_lastname = $row['user_lastname'];
            $user_password = $row['user_password'];
            $user_email = $row['user_email'];
            $user_role = $row['user_role'];

    
        }

    
    if(isset($_POST['edit_user'])){

        $username = $_POST['username'];
        $user_firstname = $_POST['user_firstname'];
        $user_lastname = $_POST['user_lastname'];
        $user_password = $_POST['user_password'];
        $user_email = $_POST['user_email'];
        $user_role = $_POST['user_role'];


      
        //bracket
      
        if(!empty($user_password)){
            $query_password = "SELECT user_password FROM users WHERE user_id = $the_user_id";
            $get_user = mysqli_query($connection, $query);

            confirmQuery($get_user);
            $row = mysqli_fetch_array($get_user);

            $db_user_password = $row['user_password'];

            if($db_user_password != $user_password){

                $hashed_password = password_hash($user_password, PASSWORD_BCRYPT, array('cost' => 12));
    
            }


            
                    $query = "UPDATE users SET ";
                
                    
                    $query .= "user_firstname = '{$user_firstname}', ";
                    $query .= "user_lastname = '{$user_lastname}', ";
                    $query .= "user_role = '{$user_role}', ";
                    $query .= "username = '{$username}', ";
                    $query .= "user_email = '{$user_email}', ";
                    $query .= "user_password = '{$hashed_password}' ";
                    
                    
                    $query .= "WHERE user_id = {$the_user_id} ";


                    $update_user = mysqli_query($connection, $query);


                    confirmQuery($update_user);


                    echo "User Updated" . "<a href='users.php'>View Users</a>";
            
        }




        
    }


      
    



?>

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

   <option value="<?php echo $user_role; ?>"><?php echo $user_role; ?></option>

   
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

 