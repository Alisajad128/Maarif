<?php
require "connection.php";
#HERE THE PERSON IS CHECK THAT HE OR SHE IS ON THAT SCHOOL;
// sending request to new school for accepting the student
if(isset($_GET["newschool"])){
    $oldschool = $_GET["old"];
    $new = $_GET["newschool"];
    $year = $_GET["year"];
    $startyear = "شهرت_شاگردان".$year;
    $id = $_GET["id"];
    $grade = $_GET["grade"];

    $db2 = mysqli_query($congeneral,"USE $oldschool");
    if($db2){
        $row1 = mysqli_query($congeneral,"SELECT * FROM $startyear WHERE student_nid=$id;");
        if($row1){
            while($arr = mysqli_fetch_assoc($row1)){
                $name = $arr["student_name"];
                $fname = $arr["father_name"];
            }
        }
    }

    $dbnew = mysqli_query($congeneral,"USE $new");
    if($dbnew){
        $row2 = mysqli_query($congeneral,"CREATE TABLE IF NOT EXISTS requests(
            student_id INT NOT NULL,
            student_name varchar(255) NOT NULL,
            father_name varchar(255) NOT NULL,
            grade int not null,
            preschool varchar(255) not null,
            startyear int not null,
            PRIMARY KEY(student_id)
        );");
        if($row2){
            $row3 = mysqli_query($congeneral,"INSERT INTO requests VALUES('$id','$name','$fname','$grade','$oldschool','$year');");
            if($row3){  echo "submited";    }
            else{   echo "not submited.$row3";   }
        }
        else{   echo "table not created";   }
    }
}
?>