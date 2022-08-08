<?php
require "connection.php";
if(isset($_POST["submit"])){
    $schoolname = $_POST["schoollist"];
    $nid = $_POST["nid"];
    $name = $_POST["name"];
    $fathername = $_POST["fathername"];
    $grandfather = $_POST["grandfather"];
    $dofb = $_POST["dofb"];
    $photo=$_FILES["image"]["name"];
    $table = $_POST["table"];

    $persian_alpha_codepoints = '\x{0621}-\x{0628}\x{062A}-\x{063A}\x{0641}-\x{0642}\x{0644}-\x{0648}\x{064E}-\x{0651}\x{0655}\x{067E}\x{0686}\x{0698}\x{06A9}\x{06AF}\x{06BE}\x{06CC}\x{0020}\x{2000}-\x{200F}\x{2028}-\x{202F}';
    $checkname = preg_match('/^['.$persian_alpha_codepoints.']*$/u', $name);
    $checkFname = preg_match('/^['.$persian_alpha_codepoints.']*$/u', $fathername);
    $checkGFname = preg_match('/^['.$persian_alpha_codepoints.']*$/u', $grandfather);
    /// pattern for id number
    // $persian_num_codepoints = '\x{06F0}-\x{06F9}';
    // $checknidp = preg_match('/['.$persian_num_codepoints.']*$/', $nid);

    $checknid = preg_match('/[0-9]*$/',$nid);
    if(!$checkname){
        header("location:../newstudent.php?error=nameinvalid");
        exit;
    }
    elseif(!$checkFname) {
        header("location:../newstudent.php?error=fnameinvalid");
        exit;
    }    
    elseif(!$checkGFname) {
        header("location:../newstudent.php?error=gfnameinvalid");
        exit;
    }    
    elseif(!$checknid) {
        header("location:../newstudent.php?error=nidinvalid");
        exit;
    }    
    elseif(empty($dofb)){
        header("location:../newstudent.php?error=dofbinvalid");
        exit;
    }
    elseif($_FILES["image"]["size"]>5120000){
        header("location:../newstudent.php?error=bigsize");
        exit;
    }else {
        $dofb = str_replace("/","-",$dofb);
        $connect = mysqli_query($congeneral,"USE $schoolname;");
        if($connect){
            // spilt image in part to talk extenation
            $spilt = explode(".",$photo);
            $newpath = "C:/xampp/htdocs/filter/photo/".time().".".strtolower(end($spilt));
            $result = mysqli_query($congeneral,"INSERT INTO $table VALUES('$nid','$name','$fathername','$grandfather','$dofb','$newpath');");
            if($result){
                move_uploaded_file($_FILES["image"]["tmp_name"],$newpath);
                header("location:../newstudent.php?success");
                exit;
            }
            else {
               header("location:../newstudent.php?error=notsubmit");
                exit;
            }
        }else{
            header("location:../newstudent.php?error=connectiondown");
            exit;
        }

    }
}
?>