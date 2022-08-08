<?php
    $server="localhost";
    $user = "root";
    $password = "";
    $database = "Maraf";
    $conn = mysqli_connect($server,$user,$password,$database);
    $congeneral = mysqli_connect($server,$user,$password);
    if(isset($_GET["newdb"])){
        $newdb = $_GET["newdb"];
        $user = $_GET["user"];
        $password = $_GET["pass"];
        $privilege = $_GET["pri"];
        # checking inputs 
        if(empty($user)){
            header("location:../signup.php?error=emptyuser");
            exit();
        }
        elseif(empty($password)){
            header("location:../signup.php?error=emptypassword");
            exit();
        }
        elseif($privilege=="empty"){
            header("location:../signup.php?error=emptytable");
            exit();
        }
        else{
            # pattern for vailed username;
            $persian_alpha_codepoints = '\x{0621}-\x{0628}\x{062A}-\x{063A}\x{0641}-\x{0642}\x{0644}-\x{0648}\x{064E}-\x{0651}\x{0655}\x{067E}\x{0686}\x{0698}\x{06A9}\x{06AF}\x{06BE}\x{06CC}\x{0020}\x{2000}-\x{200F}\x{2028}-\x{202F}';
            $userpattern = preg_match('/^['.$persian_alpha_codepoints.']*$/u', $user);
            # patterns for stronge password;
            $uppercase = preg_match("@[A-Z]@",$password);
            $lowercase = preg_match("@[a-z]@",$password);
            $number = preg_match("@[0-9]@",$password);
            $specialchars = preg_match("@[^\w]@",$password);
            if(!$userpattern){
                header("location:../signup.php?error=incurrectuser");
                exit();
            }
            elseif(strlen($user)<3 && strlen($password)<8){
                header("location:../signup.php?error=lenght");
                exit();
            }
            elseif(!$uppercase || !$lowercase||!$number ||!$specialchars){
                header("location:../signup.php?error=weakpass");
                exit();
            }
            elseif(empty($newdb)){
                header("location:../signup.php?error=emptyschool");
                exit();
            }
            elseif($privilege=="teacher" && preg_match("@[0-9]@",$newdb)){
                header("location:../signup.php?error=schoolnum");
                exit();
            }
            else{
                $row = mysqli_query($conn,"SELECT * FROM users WHERE username='$user' AND passwd='$password';");
                if(mysqli_num_rows($row)>0){
                    header("location:../signup.php?error=founduser");
                    exit();
                }
                else{
                    $result = mysqli_query($conn,"INSERT INTO `users`(`username`,`passwd`,`privilege`,`workplace`) VALUES('$user','$password','$privilege','$newdb');");
                    if($result){
                        $conndb = mysqli_connect("localhost","root","");
                        mysqli_query($conndb,"CREATE DATABASE $newdb");
                        header("location:../signup.php?success=submited");
                        exit();
                    }else{
                        header("location:../signup.php?error=notsubmitdata");
                        exit();
                    }
                }
            }
        }
        # endes input checking
    }
?>