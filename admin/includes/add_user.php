<?php
    if(isset($_POST['create_user'])){

        // $user_id = $_POST['user_id'];
        $user_firstname = $_POST['user_firstname'];
        $user_lastname = $_POST['user_lastname'];
        $user_role = $_POST['user_role'];



        
        $username = $_POST['username'];
        $user_email = $_POST['user_email'];



        $user_password = $_POST['user_password'];
        


        //functions for images

        // move_uploaded_file($post_image_temp, "../images/$post_image" );


        
        $query = "INSERT INTO users(username,user_password,user_firstname,user_lastname,user_email,user_role) ";
        $query .= "VALUES('{$username}','{$user_password}','{$user_firstname}','{$user_lastname}','{$user_email}','{$user_role}' ) ";
    
        $create_user_query = mysqli_query($connection, $query);

        confirmQuery($create_user_query);
    }
?>

<form action="" method="post" enctype="multipart/form-data">

<div class="form-group">
        
        <label for="author">Firstname</label>
        <input type="text" class="form-control" name="user_firstname">
            
    </div>


    <div class="form-group">
        
        <label for="post_status">Lastname</label>
        <input type="text" class="form-control" name="user_lastname">
            
    </div>


    <div class="form-group">
    
   <select name="user_role" id="">

            <option value="subscriber">Select Option</option>
            <option value="admin">Admin</option>
            <option value="subscriber">Subscriber</option>
        </select>
    </div>






    <div class="form-group">
        
        <label for="post_status">Username</label>
        <input type="text" class="form-control" name="username">
            
    </div>

    <!-- <div class="form-group">
        
        <label for="post_image">Post Image</label>
        <input type="file" name="image">
            
    </div> -->

    <div class="form-group">
        
        <label for="post_tags">Email</label>
        <input type="email" class="form-control" name="user_email">
            
    </div>

    <div class="form-group">
        
        <label for="post_tags">Password</label>
        <input type="password" class="form-control" name="user_password">
            
    </div>

    <div class="form-group">
        
    <input type="submit" value="Add User" name="create_user" class="btn btn-primary ">
            
    </div>
</form>

 