<?php

    if(isset($_GET['edit_user'])){

        $the_user_id = $_GET['edit_user'];


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

            //         $query = "UPDATE posts SET ";
            // /////////////////////////////////////////
            // $query .= "post_category_id = '{$post_category_id}', ";
            // $query .= "post_title = '{$post_title}', ";
            // $query .= "post_author = '{$post_author}', ";
            // $query .= "post_date = now(), ";
            // $query .= "post_image = '{$post_image}', ";
            // $query .= "post_content = '{$post_content}', ";
            // $query .= "post_tags = '{$post_tags}', ";
            // $query .= "post_status = '{$post_status}' ";
            // $query .= "WHERE post_id = {$the_post_id} ";


            // $update_post = mysqli_query($connection, $query);


            // confirmQuery($update_post);

    }

        // if(isset($_POST['edit_user'])){

        //     $post_title = $_POST['title'];
        //     $post_author = $_POST['author'];
        //     $post_category_id = $_POST['post_category'];
        //     $post_status = $_POST['post_status'];
    
    
    
        //     //use super global $_FILES
        //     // $post_image = $_FILES['image']['name'];
        //     // $post_image_temp = $_FILES['image']['tmp_name'];
    
    
    
        //     $post_tags = $_POST['post_tags'];
        //     $post_content = $_POST['post_content'];


        //     move_uploaded_file($post_image_temp, "../images/$post_image" );
        
        //     //to fix the bug of iage disappering after updating the post.
        //     if(empty($post_image)){

        //         $query = "SELECT * FROM posts WHERE post_id = $the_post_id ";
        //         $select_image = mysqli_query($connection, $query);

        //         while($row = mysqli_fetch_array($select_image)){
        //             $post_image = $row['post_image'];
        //         }       
        //     }
                
        
        //     $query = "UPDATE posts SET ";
        //     /////////////////////////////////////////
        //     $query .= "post_category_id = '{$post_category_id}', ";
        //     $query .= "post_title = '{$post_title}', ";
        //     $query .= "post_author = '{$post_author}', ";
        //     $query .= "post_date = now(), ";
        //     $query .= "post_image = '{$post_image}', ";
        //     $query .= "post_content = '{$post_content}', ";
        //     $query .= "post_tags = '{$post_tags}', ";
        //     $query .= "post_status = '{$post_status}' ";
        //     $query .= "WHERE post_id = {$the_post_id} ";


        //     $update_post = mysqli_query($connection, $query);


        //     confirmQuery($update_post);

            
        // }
    



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
        
    <input type="submit" value="Add User" name="edit_user" class="btn btn-primary ">
            
    </div>




</form>

 