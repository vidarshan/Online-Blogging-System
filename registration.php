<?php  include "includes/navigation.php"; ?>
 <?php  include "includes/header.php"; ?>

 <?php
    if(isset($_POST['submit'])){
  
                //$2y$10$Iusesomecrazystrings22 -cost parameter on db 

                $username = $_POST['username'];
                $email = $_POST['email'];
                $password = $_POST['password'];
//test

                        if(!empty($username) && !empty($password) && !empty($email)){
                                

                            $username = mysqli_real_escape_string($connection, $username);
                            $email = mysqli_real_escape_string($connection, $email);
                            $password = mysqli_real_escape_string($connection, $password);
            
                            $password = password_hash($password, PASSWORD_BCRYPT, array('cost' => 12));

            
            
                                $query = "INSERT INTO users (username, user_email, user_password, user_role) ";
                                $query .= " VALUES('{$username}', '{$email}', '{$password}', 'subscriber')";
            
                                $register_user_query = mysqli_query($connection, $query);
            
                                if(!$register_user_query){
            
                                    die("Query failed " . mysqli_error($connection));
            
                                }

                            $message = "Your registration has been submitted";


                        }else{

                            $message = "Fields cannot be empty";

                        }




        }   else {

            //making variable empty to fix the error when the page is loaded and no information is on the form
            //gives an undefined variable error
            $message = "";

        }
    
 ?>

    <!-- Navigation -->
    
  
    
 
    <!-- Page Content -->
    <div class="container">
    
<section id="login">
    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-xs-offset-3">
                <div class="form-wrap">
                <h1>Register</h1>
                    <form role="form" action="registration.php" method="post" id="login-form" autocomplete="off">
                       <h4 class="text-center text-warning bg-success"><?php echo $message;?></h4>
                        <div class="form-group">
                            <label for="username" class="sr-only">username</label>
                            <input type="text" name="username" id="username" class="form-control" placeholder="Enter Desired Username">
                        </div>
                         <div class="form-group">
                            <label for="email" class="sr-only">Email</label>
                            <input type="email" name="email" id="email" class="form-control" placeholder="somebody@example.com">
                        </div>
                         <div class="form-group">
                            <label for="password" class="sr-only">Password</label>
                            <input type="password" name="password" id="key" class="form-control" placeholder="Password">
                        </div>
                
                        <input type="submit" name="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="Register">
                    </form>
                 
                </div>
            </div> <!-- /.col-xs-12 -->
        </div> <!-- /.row -->
    </div> <!-- /.container -->
</section>


        <hr>



<?php include "includes/footer.php"; ?>