<?php

if(isset($_POST['submit'])) {

    include_once 'dbh.inc.php';

    $email = mysqli_real_escape_string($conn,$_POST['email']);
    $username = mysqli_real_escape_string($conn,$_POST['username']);
    $psw = mysqli_real_escape_string($conn,$_POST['psw']);
    $psw_repeat = mysqli_real_escape_string($conn,$_POST['psw-repeat']);

    //error handlers

    if (empty($email) || empty($username) || empty($psw) || empty($psw_repeat)) {
        
        header("Location: ../SignUp.html?signup=empty");
        exit();

    } else {
        
        if (!filter_var($email,FILTER_VALIDATE_EMAIL)) {
            header("Location: ../SignUp.html?signup=email");
            exit();

        } else {

            $sql = "SELECT * FROM users WHERE user_username='$username'";
            $result = mysqli_query($conn,$sql);
            $resultcheck = mysqli_num_rows($result);

            if($resultcheck > 0) {
                header("Location: ../SignUp.html?signup=usertaken");
                exit();

            } else {

                $hashedpwd = password_hash($psw, PASSWORD_DEFAULT);
                $sql = "INSERT INTO users (user_email, user_username, user_psw) VALUES ('$email', '$username', '$hashedpwd'); ";
                $result = mysqli_query($conn, $sql);

                header("Location: ../Home.html?signup=sucess");
                exit();
            }
        }
    }
} else {
    
    header("Location: ../SignUp.html");
    exit();
    }