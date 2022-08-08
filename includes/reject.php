<?php
    require "connection.php";
    session_start();
    if(isset($_GET["id"])){
        $id=$_GET["id"];
        $school = $_SESSION["work"];
        $db = mysqli_query($congeneral,"USE $school;");
        if($db){
            $del = mysqli_query($congeneral,"DELETE FROM requests WHERE student_id=$id");
            if($del){
                header("location:../checkRequests.php?success");
                echo "success";
                exit;
            }else{
                header("location:../checkRequests.php?error=notdel");
                exit;
            }
        }else {
            header("location:../checkRequests.php?error=checkconnection");
            echo "connection".$db;
            exit;
        }
    }

?>