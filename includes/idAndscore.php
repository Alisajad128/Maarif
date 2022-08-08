<?php
require "connection.php";
session_start();
# id valiedation for checking id of students
if(isset($_GET["id"])){
    $student_id = $_GET["id"];
    $table = $_GET["table"];
    $class = $_GET["class"];
    $tableyear=filter_var($table, FILTER_SANITIZE_NUMBER_INT);
    $ta = $tableyear[0].$tableyear[1].$tableyear[2].$tableyear[3];
    $finaltable = "شهرت_شاگردان".($ta-($class-1));

    $pattern = '/[0-9]*$/';
    $school = $_SESSION["work"];
    if(empty($student_id)){
        echo "لطفا آی دی را وارد نماید";
    }
    elseif(preg_match($pattern,$student_id)){
        $db = mysqli_query($congeneral,"USE $school;");
        if($db){
            $row = mysqli_query($congeneral,"SELECT * FROM $school.$finaltable where student_nid=$student_id;");
            if($row){
                echo "تایید شد!";
            }
            else{
                echo"آی دی موردی نظر در سیستم ثبت نیست";
            }
        }
    }
    else{
        echo "حروف و اعداد دری شامل آی دی نمی باشد";
    }
}
elseif(isset($_GET["idscore"])){
    $dbname = $_SESSION["work"];
    $row = mysqli_query($congeneral,"use $dbname");
    if($row){
        $table=$_GET["table"];
        $id =$_GET["idscore"];
        $dari=$_GET["dari"];
        $math=$_GET["math"];
        $skill=$_GET["skill"];
        $quran = $_GET["quran1"];
        $islam=$_GET['islam'];
        $sport=$_GET['sport'];
        $checkdup = mysqli_query($congeneral,"SELECT * FROM $table where student_nid=$id;");
        if(mysqli_num_rows($checkdup)){
            echo "نمرات شخص مورد نظر قبلا ثبت شد";
        }else{
            $reult =mysqli_query($congeneral,"INSERT INTO $table VALUES($id,$dari,$math,$skill,$quran,$islam,$sport);");
            if($reult){
                echo "ثبت شد";
            }else {
                # code...
                echo "ثبت نشد";
            }
        }
    }else {
        # code...
        echo "دیتابیس یافت نشد";
    }
}elseif(isset($_GET["id2"])){
    $dbname = $_SESSION["work"];
    $row = mysqli_query($congeneral,"use $dbname");
    if($row){
        $table=$_GET["table"];$id =$_GET["id2"];
        $quran=$_GET["quran"];$islamic=$_GET["islamic"];$dari=$_GET["dari"];$pashto=$_GET["pashto"];
        $arabic=$_GET["arabic"];$english=$_GET["english"];$chem=$_GET["chem"];$py=$_GET["py"];
        $bio=$_GET["bio"];$math=$_GET["math"];$history=$_GET["history"];$geo=$_GET["geo"];
        $civil=$_GET["civil"];$skill=$_GET["skill"];$selective=$_GET["selective"];
        $art=$_GET["art"];$sport=$_GET["sport"];$reform=$_GET["reform"];
        $checkdup = mysqli_query($congeneral,"SELECT student_id FROM $table where student_nid=$id");
        if(mysqli_num_rows($checkdup)){
            echo "نمرات شخص مورد نظر قبلا ثبت شد";
        }else{
            $result =mysqli_query($congeneral,"INSERT INTO $table VALUES($id,$quran,$islamic,$dari,$pashto
            ,$arabic,$english,$chem,$py,$bio,$math,$history,$geo,$civil,$skill,$selective,$art,$sport,$reform);");
            if($result){
                echo "ثبت شد";
            }else {
                # code...
                echo "ثبت نشد";
            }
        }
    }else {
        # code...
        echo "دیتابیس یافت نشد";
    }
}
elseif(isset($_GET["id3"])){
    $dbname = $_SESSION["work"];
    $row = mysqli_query($congeneral,"use $dbname");
    if($row){
        $table=$_GET["table"];$id =$_GET["id3"];
        $inter=$_GET["inter"];$islamic=$_GET["islamic"];$dari=$_GET["dari"];$pashto=$_GET["pashto"];
        $geol=$_GET["geol"];$english=$_GET["english"];$chem=$_GET["chem"];$py=$_GET["py"];
        $bio=$_GET["bio"];$math=$_GET["math"];$history=$_GET["history"];$geo=$_GET["geo"];
        $civil=$_GET["civil"];$computer=$_GET["computer"];$selective=$_GET["selective"];$sport=$_GET["sport"];$reform=$_GET["reform"];
        $checkdup = mysqli_query($congeneral,"SELECT student_id FROM $table where student_nid=$id");
        if($checkdup){
            echo "نمرات شخص مورد نظر قبلا ثبت شد";
        }else{
            $result =mysqli_query($congeneral,"INSERT INTO $table VALUES($id,$inter,$islamic,$dari,$pashto,$geol,
            $english,$chem,$py,$bio,$math,$history,$geo,$civil,$computer,$selective,$sport,$reform);");
            if($result){
                echo "ثبت شد";
            }else {
                # code...
                echo "ثبت نشد";
            }
        }
    }else {
        # code...
        echo "دیتابیس یافت نشد";
    }
}
?>