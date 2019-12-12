<?php include "db.php"; ?>

<?php session_start(); ?>


<!-- admin header and other files contain sessions-->
<?php

if (isset($_POST['login'])) {

     $username = $_POST['username'];
     $password = $_POST['password'];

    $username = mysqli_real_escape_string($connection, $username);
    $password = mysqli_real_escape_string($connection, $password);


    $query = "SELECT * FROM users WHERE username = '{$username}' ";
    $select_user_query = mysqli_query($connection, $query);

    if(!$select_user_query){

        die("Query failed ". mysqli_error($connection));

    }


    while($row = mysqli_fetch_array($select_user_query)){

        $db_id = $row['user_id'];
        $db_username = $row['username'];
        $db_user_password = $row['user_password'];
        $db_user_firstname = $row['user_firstname'];
        $db_user_lastname = $row['user_lastname'];
        $db_user_role = $row['user_role'];
        

    }

    //decrypt password
    // $password = crypt($password, $db_user_password);

    //password verify compares form passsord and db password.
    //returns true or false
    if(password_verify($password,$db_user_password)){

                //always assign from right to left
        $_SESSION['username'] = $db_username;
        $_SESSION['user_firstname'] = $db_user_firstname;
        $_SESSION['user_lastname'] = $db_user_lastname;
        $_SESSION['user_role'] = $db_user_role;


        header("Location: ../admin");
    
    }else{

        header("Location: ../index.php");

    }


}

?>