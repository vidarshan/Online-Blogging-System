<?php

    if(isset($_POST['checkBoxArray'])){
        

        foreach($_POST['checkBoxArray'] as $postValueId){

           $bulk_options = $_POST['bulk_options'];

           switch($bulk_options){

            case 'published':
                
                $query = "UPDATE posts SET post_status = 'published' ";
                $query .= "WHERE post_id = $postValueId";

                $bulk_publish = mysqli_query($connection, $query);

                confirmQuery($bulk_publish);

            break;

            case 'draft':
                
                $query = "UPDATE posts SET post_status = 'draft' ";
                $query .= "WHERE post_id = $postValueId";

                $bulk_draft = mysqli_query($connection, $query);

                confirmQuery($bulk_draft);

            break;

            case 'delete':
                
                $query = "DELETE FROM posts ";
                $query .= "WHERE post_id = $postValueId";

                $bulk_delete = mysqli_query($connection, $query);

                confirmQuery($bulk_delete);

            break;

            case 'clone':

                $query = "SELECT * FROM posts WHERE post_id = '{$postValueId}' ";
                $select_post_query = mysqli_query($connection, $query);

                while($row = mysqli_fetch_array($select_post_query)){
                    
                    
                    $post_title = $row['post_title'];
                    $post_category_id = $row['post_category_id'];
                    $post_date = $row['post_date'];
                    $post_author = $row['post_author'];
                    $post_status = $row['post_status'];
                    $post_image = $row['post_image'];
                    $post_tags = $row['post_tags'];
                    $post_content = $row['post_content'];    
                    
                }

                $query = "INSERT INTO posts(post_category_id,post_title,post_author,post_date,post_image,post_content,post_tags,post_status) ";
                $query .= "VALUES({$post_category_id},'{$post_title}','{$post_author}',now(),'{$post_image}','{$post_content}','{$post_tags}','{$post_status}' ) ";  

                $copy_query = mysqli_query($connection, $query);

                if(!$copy_query){
                    die("Query failed ". mysqli_error($connection));
                }
            break;

           }

        }
    }
?>
<form action="" method="post">
<table class="table table-bordered table-hover">


            <div id="bulkOptionsContainer" class="col-xs-4">
                <select name="bulk_options" class="form-control" id="">
                    <option value="">Select Options</option>
                    <option value="published">Publish</option>
                    <option value="draft">Draft</option>
                    <option value="delete">Delete</option>
                    <option value="clone">Clone</option>
                </select>
            </div>
                            
            <div class="col-xs-4">

            <input name = "submit" type="submit" class="btn btn-success" value="Apply">
            <a href="posts.php?source=add_post" class="btn btn-primary">Add New</a>
            </div>
                            <thead>
                                <tr>
                                    <th><input type="checkbox" id="selectAllBoxes"></th>
                                    <th>ID</th>
                                    <th>Post Author</th>
                                    <th>Post Title</th>
                                    <th>Post Category</th>
                                    <th>Post Status</th>
                                    <th>Post Image</th>
                                    <th>Post Tags</th>
                                    <th>Comments</th>
                                    <th>Date</th>
                                    <th>Post Views</th>
                                </tr>
                            </thead>
                            <tbody>



                            <?php
                                    $query = "SELECT * FROM posts ORDER BY post_id DESC";
                                    $select_posts = mysqli_query($connection, $query);
                                        while($row = mysqli_fetch_assoc($select_posts)){
                                        $post_id = $row['post_id'];
                                        $post_author = $row['post_author'];
                                        $post_title = $row['post_title'];
                                        $post_category_id = $row['post_category_id'];
                                        $post_status = $row['post_status'];
                                        $post_image = $row['post_image'];
                                        $post_tags = $row['post_tags'];
                                        $post_comment_count = $row['post_comment_count'];
                                        $post_date = $row['post_date'];
                                        $post_views_count = $row['post_views_count'];
                                        
                                        
                                        



                                        echo "<tr>";
                                        ?>


                                        <!--need to make an array
                                        -->
                                        <td><input class='checkBoxes' name='checkBoxArray[]' type='checkbox' value='<?php echo "$post_id"; ?>'></td>;


                                        <?php
                                        echo "<td>{$post_id}</td>";
                                        echo "<td>{$post_author}</td>";
                                        echo "<td>{$post_title}</td>";


                                        //relating category table and post table for catgeory name
                                        
                                        $query = "SELECT * FROM categories WHERE cat_id = {$post_category_id} ";
                                        $select_categories_id = mysqli_query($connection, $query);
                                        
                                        while($row = mysqli_fetch_assoc($select_categories_id)){
                                        $cat_id = $row['cat_id'];
                                        $cat_title = $row['cat_title'];
 
                                        echo "<td>{$cat_title}</td>";
                                        
                                        }
                                        
                                        echo "<td>{$post_status}</td>";
                                        echo "<td><img src='../images/$post_image' alt='post image' width=100px></td>";
                                        echo "<td>{$post_tags}</td>";
                                        echo "<td>{$post_comment_count}</td>";
                                        echo "<td>{$post_date}</td>";
                                        echo "<td>{$post_views_count}</td>";
                                        //posts.php file contains the conditions
                                        //standard and professional way
                                        echo "<td><a href='../post.php?p_id={$post_id}'>VIEW POST</a></td>";
                                        echo "<td><a href='posts.php?source=edit_post&p_id={$post_id}'>EDIT</a></td>";
                                        //delete confirmation
                                        echo "<td><a onClick=\"javascript: return confirm('Are you sure that you want to delete this item?') \" href='posts.php?delete={$post_id}'>DELETE</a></td>";
                                        echo "<tr>";

                                    }


                                    if(isset($_GET['delete'])){

                                        $the_post_id = $_GET['delete'];

                                        $query = "DELETE FROM posts WHERE post_id = {$the_post_id} ";

                                        $delete_post_query = mysqli_query($connection, $query);

                                        confirmQuery($delete_post_query);

                                        header("Location: ./posts.php");

                                    }
                            ?>
                                
                            </tbody>
                        </table>
                        </form>
