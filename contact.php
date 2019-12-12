<?php  include "includes/navigation.php"; ?>
 <?php  include "includes/header.php"; ?>

 <?php
    if(isset($_POST['submit'])){
  
                //$2y$10$Iusesomecrazystrings22 -cost parameter on db 

                $to = "vidaaadi99@gmail.com";
                $subject = $_POST['subject'];
                $body = $_POST['body'];
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
                <h1>Contact</h1>
                    <form role="form" action="registration.php" method="post" id="login-form" autocomplete="off">
                       <h4 class="text-center text-warning bg-success"><?php echo $message;?></h4>
                         <div class="form-group">
                            <label for="email" class="sr-only">Email</label>
                            <input type="email" name="email" id="email" class="form-control" placeholder="Enter your email">
                        </div>
                        <div class="form-group">
                            <label for="subject" class="sr-only">Subject</label>
                            <input type="text" name="subject" id="subject" class="form-control" placeholder="Enter your subject">
                        </div>
                         <div class="form-group">
                            <textarea class="form-control" name="body" id="body" cols="50" rows="10"></textarea>
                         
                        </div>
                
                        <input type="submit" name="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="Submit">
                    </form>
                 
                </div>
            </div> <!-- /.col-xs-12 -->
        </div> <!-- /.row -->
    </div> <!-- /.container -->
</section>


        <hr>



<?php include "includes/footer.php"; ?>