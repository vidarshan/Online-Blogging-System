<?php  include "includes/navigation.php"; ?>
 <?php  include "includes/header.php"; ?>

 

 <?php
    if(isset($_POST['submit'])){
  
                //$2y$10$Iusesomecrazystrings22 -cost parameter on db 
                //check before using.
                //doesnt work on a local server - disabled.
                $to = "vidaaadi99@gmail.com";
                $subject = wordwrap($_POST['subject']);
                $body = $_POST['body'];
                $header ="From : ".  $_POST['email'];
//test
                mail($to,$subject,$body, $header);

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