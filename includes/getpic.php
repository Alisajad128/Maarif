<?php
    session_start();
    require "connection.php";
    if(isset($_POST["pic"])){
        $address = $_FILES["photo"]["tmp_name"];
        $name = $_FILES["photo"]["name"];
        $extenation = explode(".",$name);
        $newname = time().".".strtolower($extenation[1]);
        $newAddress = "C:/xampp/htdocs/filter/images/".$newname;  
        if(empty($name)){
            header("location:../setting.php?error=nopic");
            exit();
        }else{
            $user = $_SESSION["username"];
            $preimage = mysqli_query($conn,"SELECT photo FROM `users` WHERE username='$user'");
            if(mysqli_num_rows($preimage)==1){
                while($arr = mysqli_fetch_assoc($preimage)){
                    $addressimg = $arr["photo"];
                    unlink($addressimg);
                }
                $row = mysqli_query($conn,"UPDATE `users` SET photo = '$newAddress' WHERE username = '$user'");
                if($row>0){
                    move_uploaded_file($address,$newAddress);
                    header("location:../setting.php");
                }else{
                    echo "updated";
                }
            }
        }
    }
?>