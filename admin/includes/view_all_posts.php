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
                                        echo "<td>{$post_category_id}</td>";
                                        echo "<td>{$post_status}</td>";
                                        echo "<td><img src='../images/$post_image' alt='post image' width=100px></td>";
                                        echo "<td>{$post_tags}</td>";
                                        echo "<td>{$post_comment_count}</td>";
                                        echo "<td>{$post_date}</td>";
                                       // echo "<td><a href='categories.php?delete={$cat_id}'>DELETE</a></td>";
                                      //  echo "<td><a href='categories.php?edit={$cat_id}'>EDIT</a></td>";
                                        echo "<tr>";
                                    }
                            ?>
                                
                            </tbody>
                        </table>