<?php

    session_start();

    if(isset($_POST['login'])) {

            include 'dbh.inc.php';

            $uname = mysqli_real_escape_string($conn,$_POST['uname']);
            $psw = mysqli_real_escape_string($conn,$_POST['psw']);

        //Error Handlers

        if(empty($uname) || empty($psw)) {
            header("Location: ../index.html?login=empty");
            exit();

        } else {

            $sql = "SELECT * FROM users WHERE user_username= '$uname'";
            $result = mysqli_query($conn,$sql);
            $resultcheck = mysqli_num_rows($result);

            if($resultcheck < 1) {
                
                header("Location: ../index.html?login=error");
                exit();

            } else {

                if ($row = mysqli_fetch_assoc($result) ){

                    $hashedpwdcheck = password_verify($psw,$row['user_psw']);

                    if($hashedpwdcheck == false) {

                        header("Location: ../index.html?login=error");
                        exit();

                    }elseif ($hashedpwdcheck == true) {

                        $_SESSION['u_id'] = $row['user_id'];
                        $_SESSION['u_email'] = $row['user_email'];
                        $_SESSION['u_username'] = $row['user_psw'];
                        header("Location: ../Home.html?login=success");
                        exit();
                    }
                }
            }
        }
} else {
        header("Location: ../index.html");
        exit();
    }