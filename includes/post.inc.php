<?php
    require "connection.php";
    if(isset($_POST["submit"])){
        $title = $_POST["title"];
        $image = $_FILES["images"]["name"];
        $content = $_POST["content"];
        if(empty($title) ||empty($content)){
            header("location:../post.php?error=empty");
            exit();
        }else{
            if(strlen($title)<10 || strlen($content)<10){
                header("location:../post.php?error=lesslen");
                exit();
            }
            else{
                if(empty($image)){
                    $date = date("Y-m-d");

                    $check = mysqli_query($conn,"INSERT INTO news VALUES(null,'$title',null,'$content','$date');");
                    
                    
                    
                    if($check){
                        header("location:../index.php?success");
                        exit();
                    }else{
                        header("location:../post.php?error=failedTosubmit");
                        exit();
                    }
                }else{
                    $exname = explode(".",$image);
                    $path ="C:/xampp/htdocs/filter/images/".time().".".strtolower(end($exname));
                    $date = date("Y-m-d");
                    $check = mysqli_query($conn,"INSERT INTO news VALUES(null,'$title','$path','$content','$date');");
                    if($check){
                        move_uploaded_file($_FILES["images"]["tmp_name"],$path);
                        header("location:../index.php?success");
                        exit();
                    }else{
                        header("location:../post.php?error=failedTosubmit");
                        exit();
                    }
                }
                
            }
        }
    }

?>
