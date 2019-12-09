<?php session_start(); ?>


<!-- admin header and other files contain sessions-->
<?php

     //always assign from right to left
     //canceling the sessions of the user
     $_SESSION['username'] = null;
     $_SESSION['user_firstname'] = null;
     $_SESSION['user_lastname'] = null;
     $_SESSION['user_role'] = null;

     header("Location: ../index.php");


?>