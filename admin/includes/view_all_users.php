<table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Username</th>
                                    <th>Password</th>
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
                                        $user_password = $row['user_password'];
                                        $user_firstname= $row['user_firstname'];
                                        $user_lastname = $row['user_lastname'];
                                        $user_email = $row['user_email'];
                                       // $user_image = $row['user_image'];
                                        $user_role = $row['user_role'];
                                        //$user_date = $row['user_date'];
                                        
                                    

                                        echo "<tr>";
                                        echo "<td>{$user_id}</td>";
                                        echo "<td>{$username}</td>";
                                        echo "<td>{$user_password}</td>";
                                        echo "<td>{$user_firstname}</td>";
                                        echo "<td>{$user_lastname}</td>";
                                        echo "<td>{$user_email}</td>";
                                        echo "<td>{$user_role}</td>";
                                        echo "<td>date here</td>";

                                        
        

                                    }

                            ?>
                                
                            </tbody>
                        </table>