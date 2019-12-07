<?php

    if(isset($_GET['p_id'])){

        $the_post_id = $_GET['p_id'];

    }



$query = "SELECT * FROM posts WHERE post_id = {$the_post_id} ";
        $select_posts_by_id = mysqli_query($connection, $query);
            while($row = mysqli_fetch_assoc($select_posts_by_id)){
            $post_id = $row['post_id'];
            $post_author = $row['post_author'];
            $post_title = $row['post_title'];
            $post_category_id = $row['post_category_id'];
            $post_status = $row['post_status'];
            $post_image = $row['post_image'];
            $post_tags = $row['post_tags'];
            $post_content = $row['post_content'];
            $post_comment_count = $row['post_comment_count'];
            $post_date = $row['post_date'];
            

        }

        if(isset($_POST['update_post'])){

            $post_title = $_POST['title'];
            $post_author = $_POST['author'];
            $post_category_id = $_POST['post_category'];
            $post_status = $_POST['post_status'];
    
    
    
            //use super global $_FILES
            $post_image = $_FILES['image']['name'];
            $post_image_temp = $_FILES['image']['tmp_name'];
    
    
    
            $post_tags = $_POST['post_tags'];
            $post_content = $_POST['post_content'];


            move_uploaded_file($post_image_temp, "../images/$post_image" );
        
            //to fix the bug of iage disappering after updating the post.
            if(empty($post_image)){

                $query = "SELECT * FROM posts WHERE post_id = $the_post_id ";
                $select_image = mysqli_query($connection, $query);

                while($row = mysqli_fetch_array($select_image)){
                    $post_image = $row['post_image'];
                }       
            }
                
        
            $query = "UPDATE posts SET ";
            /////////////////////////////////////////
            $query .= "post_category_id = '{$post_category_id}', ";
            $query .= "post_title = '{$post_title}', ";
            $query .= "post_author = '{$post_author}', ";
            $query .= "post_date = now(), ";
            $query .= "post_image = '{$post_image}', ";
            $query .= "post_content = '{$post_content}', ";
            $query .= "post_tags = '{$post_tags}', ";
            $query .= "post_status = '{$post_status}' ";
            $query .= "WHERE post_id = {$the_post_id} ";


            $update_post = mysqli_query($connection, $query);


            confirmQuery($update_post);

            
        }
    



?>


<form action="" method="post" enctype="multipart/form-data">

<div class="form-group">

    <label for="title">Post Title</label>
    <input type="text" value="<?php echo $post_title; ?>" class="form-control" name="title">
        
</div>


<div class="form-group">
    
    <select name="user_role" id="">
             <?php
 
                 $query = "SELECT * FROM users";
                 $select_users = mysqli_query($connection, $query);
 
                 confirmQuery($select_users);
                 while($row = mysqli_fetch_assoc($select_users)){
                 $user_id = $row['user_id'];
                 $user_role = $row['user_role'];
 
 
                 echo "<option value='${$user_id}'>${user_role}</option>";
                 }
 
             ?>
         </select>
     </div>

<div class="form-group">
    
    <label for="author">Post Author</label>
    <input type="text" value="<?php echo $post_author; ?>" class="form-control" name="author">
        
</div>


<div class="form-group">
    
    <label for="post_status">Post Status</label>
    <input type="text" value="<?php echo $post_status; ?>" class="form-control" name="post_status">
        
</div>

<div class="form-group">
    
        <img width="100" src="../images/<?php echo $post_image; ?>" alt="">
        <input type="file" name="image">
        
</div>

<div class="form-group">
    
    <label for="post_tags">Post Tags</label>
    <input type="text" value="<?php echo $post_tags; ?>" class="form-control" name="post_tags">
        
</div>

<div class="form-group">
    
    <label for="post_content">Post Content</label>
    <textarea class="form-control" name="post_content" id="" cols="30" rows="10">
   <?php echo $post_content; ?>
    </textarea>
        
</div>

<div class="form-group">
    
<input type="submit" value="Publish post" name="update_post" class="btn btn-primary ">
        
</div>
</form>