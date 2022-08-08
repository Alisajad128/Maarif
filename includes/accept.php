<?php 
require "connection.php";
session_start();
if(isset($_GET["id"])){
    $id = $_GET["id"];
    $school = $_SESSION["work"];
    $db = mysqli_query($congeneral,"USE $school;");
    if($db){
        $ROW = mysqli_query($congeneral,"SELECT * FROM requests WHERE student_id=$id");
        if($ROW){
            while ($arr = mysqli_fetch_assoc($ROW)) {
                $_SESSION['grade'] = $arr["grade"];
                $_SESSION["preschool"] = $arr["preschool"];// for selecting db ueses;
                $_SESSION['startyear'] = $arr["startyear"];// for table of student_info uses;
            }
        }
        $table = "شهرت_شاگردان".$_SESSION["startyear"];
        $pre_school = $_SESSION["preschool"];
        $rowinfo = mysqli_query($congeneral,"INSERT INTO $school.$table SELECT * FROM $pre_school.$table WHERE student_nid=$id;");
        if($rowinfo){
            # new school tables;
            $tables1 = $_SESSION["preschool"].($_SESSION["startyear"]+($_SESSION["grade"]-1)).($_SESSION["grade"]);
            $tables2 = $_SESSION["preschool"].($_SESSION["startyear"]+($_SESSION["grade"]-2)).($_SESSION["grade"]-1);
            $tables3 = $_SESSION["preschool"].($_SESSION["startyear"]+($_SESSION["grade"]-3)).($_SESSION["grade"]-2);
            # ex-school tables;
            $tables11 = $school.($_SESSION["startyear"]+($_SESSION["grade"]-1)).($_SESSION["grade"]);
            $tables22 =$school.($_SESSION["startyear"]+($_SESSION["grade"]-2)).($_SESSION["grade"]-1);
            $tables33 = $school.($_SESSION["startyear"]+($_SESSION["grade"]-3)).($_SESSION["grade"]-2);
    
            if($_SESSION["grade"]==1){
                $class1 = mysqli_query($congeneral,"INSERT INTO $school.$tables11 SELECT * FROM $pre_school.$tables1 WHERE student_nid=$id;");
                if($class1){
                    mysqli_query($congeneral,"DELETE FROM $pre_school.$table WHERE student_nid=$id;");
                    mysqli_query($congeneral,"DELETE FROM $pre_school.$tables1 WHERE student_nid=$id;");
                    $rp= mysqli_query($congeneral,"DELETE FROM requests WHERE student_nid=$id;");
                    header("location:../checkRequests.php?success");
                    exit;
                }
            }
            elseif($_SESSION["grade"]==2){
                $class2 = mysqli_query($congeneral,"INSERT INTO $school.$tables11 SELECT * FROM $pre_school.$tables1 WHERE student_nid=$id;");
                $class3 = mysqli_query($congeneral,"INSERT INTO $school.$tables22 SELECT * FROM $pre_school.$tables2 where student_nid=$id;");
                if($class2 && $class3){
                    mysqli_query($congeneral,"DELETE FROM $pre_school.$table WHERE student_nid=$id;");
                    mysqli_query($congeneral,"DELETE FROM $pre_school.$tables1 WHERE student_nid=$id;");
                    mysqli_query($congeneral,"DELETE FROM $pre_school.$tables2 WHERE student_nid=$id;");
                     $r=mysqli_query($congeneral,"DELETE FROM requests WHERE student_nid=$id;");
                    header("location:../checkRequests.php?success");
                    exit;

                }
            }
            else{
                $classone = mysqli_query($congeneral,"INSERT INTO $school.$tables11 SELECT * FROM $pre_school.$tables1 WHERE student_nid=$id;");
                $classtwo = mysqli_query($congeneral,"INSERT INTO $school.$tables22 SELECT * FROM $pre_school.$tables2 where student_nid=$id;");
                $classthree = mysqli_query($congeneral,"INSERT INTO $school.$tables33 SELECT * FROM $pre_school.$tables3 where student_nid=$id;");
                if($classone && $classtwo && $classthree){
                    mysqli_query($congeneral,"DELETE FROM $pre_school.$table WHERE student_nid=$id;");
                    mysqli_query($congeneral,"DELETE FROM $pre_school.$tables1 WHERE student_nid=$id;");
                    mysqli_query($congeneral,"DELETE FROM $pre_school.$tables2 WHERE student_nid=$id;");
                    mysqli_query($congeneral,"DELETE FROM $pre_school.$tables3 WHERE student_nid=$id;");
                    $ro = mysqli_query($congeneral,"DELETE FROM requests WHERE student_nid=$id;");
                    header("location:../checkRequests.php?success");
                    exit;

                }
            }
        }else {
            header("location:../checkRequests.php?error=dbnotfound");
            exit;
        }
    }
}
?>

