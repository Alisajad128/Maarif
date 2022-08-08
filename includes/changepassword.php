<?php 
    require "connection.php";
    session_start();
    $user = $_SESSION["username"];
    if(isset($_GET["password"])){
        $password = $_GET["password"];
        $row = mysqli_query($conn,"SELECT 'passwd' FROM `users` WHERE username = '$user'");
        while($arr = mysqli_fetch_assoc($row)){
            if($arr["passwd"]==$password){
                echo "passed";
            }
            else{
                echo "notpassed";
            }
        }
    }elseif(isset($_GET["newpassword"])){
        $newpassword = $_GET["newpassword"];
        // pattern for new password;
        $uppercase = preg_match("@[A-Z]@",$newpassword);
        $lowercase = preg_match("@[a-z]@",$newpassword);
        $number = preg_match("@[0-9]@",$newpassword);
        $specialchars = preg_match("@[^\w]@",$newpassword);
        if(!$uppercase || !$lowercase||!$number ||!$specialchars){
            echo "weakpass";
        }else{
            $row = mysqli_query($conn,"UPDATE `users` SET passwd = '$newpassword' WHERE username = '$user'");
            if($row>0){
                echo "passed";
            }else{
                echo "notpassed";
            }
        }
    }
?>