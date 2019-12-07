<table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Username</th>
                                   
                                    <th>Firstname</th>
                                    <th>Lastname</th>
                                    <th>Email</th>
                                    <th>Role</th>
                                    <th>Date</th>
                                </tr>
                            </thead>
                            <tbody>



                            <?php
                                    $query = "SELECT * FROM users";
                                    $select_users = mysqli_query($connection, $query);
                                        while($row = mysqli_fetch_assoc($select_users)){
                                        $user_id = $row['user_id'];
                                        $username = $row['username'];
                                        
                                        $user_firstname= $row['user_firstname'];
                                        $user_lastname = $row['user_lastname'];
                                        $user_email = $row['user_email'];
                                       // $user_image = $row['user_image'];
                                        $user_role = $row['user_role'];
                                        //$user_date = $row['user_date'];
                                        
                                    

                                        echo "<tr>";
                                        echo "<td>{$user_id}</td>";
                                        echo "<td>{$username}</td>";
                                        
                                        echo "<td>{$user_firstname}</td>";
                                        echo "<td>{$user_lastname}</td>";
                                        echo "<td>{$user_email}</td>";
                                        echo "<td>{$user_role}</td>";
                                        echo "<td>date here</td>";
                                        //echo "<td><a href='comments.php?approve=$comment_id'>Approve</a></td>";
                                        //echo "<td><a href='comments.php?unapprove=$comment_id'>Unapprove</a></td>";
                                        echo "<td><a href='users.php?delete={$user_id}'>DELETE</a></td>";

                                        
        

                                    }

                            ?>
                                    <?php
    
                                                if(isset($_GET['delete'])){

                                                    $the_user_id = $_GET['delete'];

                                                    $query = "DELETE FROM users WHERE user_id = {$the_user_id} ";

                                                    $delete_user_query = mysqli_query($connection, $query);

                                                    confirmQuery($delete_user_query);

                                                    header("Location: ./users.php");

                                                }
                                ?>
                            </tbody>
                        </table>