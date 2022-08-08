<?php
    require "connection.php";
    session_start();
    if(isset($_POST["login"])){
        $username = $_POST["username"];
        $password = $_POST["pwd"];
        
        if(empty($username) && empty($password)){
            header("location:../login.php?error=empty");
            exit();
        }else{
            # pattern for vailed username;
            $persian_alpha_codepoints = '\x{0621}-\x{0628}\x{062A}-\x{063A}\x{0641}-\x{0642}\x{0644}-\x{0648}\x{064E}-\x{0651}\x{0655}\x{067E}\x{0686}\x{0698}\x{06A9}\x{06AF}\x{06BE}\x{06CC}\x{0020}\x{2000}-\x{200F}\x{2028}-\x{202F}';
            $result = preg_match('/^['.$persian_alpha_codepoints.']*$/u', $username);
            # patterns for stronge password;
            $uppercase = preg_match("@[A-Z]@",$password);
            $lowercase = preg_match("@[a-z]@",$password);
            $number = preg_match("@[0-9]@",$password);
            $specialchars = preg_match("@[^\w]@",$password);

            if(strlen($username)<3 && strlen($password)<8){
                header("location:../login.php?error=lenght");
                exit();
            }elseif($result !==1){
                header("location:../login.php?error=usernotvalid");
                exit();
            }
            elseif(!$uppercase || !$lowercase||!$number ||!$specialchars){
                header("location:../login.php?error=incorrectpass");
                exit();
            }
            else{
                $user = mysqli_query($conn,"SELECT * FROM users where username='$username' AND passwd='$password';");
                if(mysqli_num_rows($user)>0){
                    $_SESSION["username"] = $username;
                    while($arr = mysqli_fetch_assoc($user)){
                        $_SESSION["privilege"] = $arr["privilege"];
                        $_SESSION["work"] = $arr["workplace"];
                    }
                    header("location:../index.php");
                    exit();
                }else{
                    header("location:../login.php?error=notfound");
                    exit();
                }
                
            }
        }
    }else{
        header("location:../login.php");
    }
?>