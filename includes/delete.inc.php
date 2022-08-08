<?php
    require "connection.php";
    if(isset($_GET["id"])){
        $id=$_GET["id"];
        $img = mysqli_query($conn,"SELECT * FROM `news` WHERE news_id=$id");
        if($img){
            while($arr = mysqli_fetch_assoc($img)){
                $preimg = $arr["image"];
                if($preimg!=null){
                    unlink($preimg);
                }
            }
            $row = mysqli_query($conn,"DELETE FROM `news` WHERE news_id=$id");
            if($row){
                header("location:../index.php");
            }else{
                header("location:../index.php?error=notdel");
            }
        }
    }
?>