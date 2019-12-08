            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-4">

                <!-- Blog Search Well -->
                <div class="well">
                    <h4>Blog Search</h4>

                    <form action="search.php" method="post">
                        <div class="input-group">
                            <input name="search" type="text" class="form-control">
                            <span class="input-group-btn">
                                <!-- button type also should be submit when a form is used-->
                                <button class="btn btn-default" type="submit" name="submit">
                                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                            </span>
                        </div>
                    </form>
                    <!-- /.input-group -->
                </div>



                <!-- login -->
                <div class="well">
                    <h4>Log in to the site</h4>

                    <form action="includes/login.php" method="post">
                        <div class="form-group">
                            <input name="username" placeholder="Enter username...." type="text" class="form-control">
                           
                        </div>
                        <div class="form-group">
                            
                            <input name="password" placeholder="Enter password...." type="password" class="form-control">
                            
                            </div>
                            <div class="btn-group">
                                <button type="submit" class="btn btn-success" name="login">Login

                                </button>
                                
                          
                        </div>


                    </form>
                    <!-- /.input-group -->
                </div>


                <?php

                $query = "SELECT * FROM categories";

                $select_all_catgeories_sidebar = mysqli_query($connection, $query);
                ?>
                <!-- Blog Categories Well -->
                <div class="well">
                    <h4>Blog Categories</h4>
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="list-unstyled">

                                <?php


                                while ($row = mysqli_fetch_assoc($select_all_catgeories_sidebar)) {
                                    $cat_id = $row['cat_id'];
                                    $cat_title = $row['cat_title'];

                                    echo "<li><a href='category.php?category=$cat_id'>{$cat_title}</a></li>";
                                }

                                ?>
                            </ul>
                        </div>
                        <!-- /.col-lg-6 -->
                        <!-- /.col-lg-6 -->
                    </div>
                    <!-- /.row -->
                </div>

                <!-- Side Widget Well -->
                <?php include "widget.php"; ?>

            </div>