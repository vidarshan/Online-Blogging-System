<table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Post Author</th>
                                    <th>Post Title</th>
                                    <th>Post Category</th>
                                    <th>Post Status</th>
                                    <th>Post Image</th>
                                    <th>Post Tags</th>
                                    <th>Comments</th>
                                    <th>Date</th>
                                </tr>
                            </thead>
                            <tbody>



                            <?php
                                    $query = "SELECT * FROM posts";
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
                                        
                                        
                                        



                                        echo "<tr>";
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
                                        //posts.php file contains the conditions
                                        //standard and professional way
                                        echo "<td><a href='posts.php?source=edit_post&p_id={$post_id}'>EDIT</a></td>";
                                        echo "<td><a href='posts.php?delete={$post_id}'>DELETE</a></td>";
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