<?php
    require "connection.php";
    session_start();
    if(isset($_GET["year"])){
        $year = $_GET["year"];
        $pattern= '/^14[0-9]{2}/';
        if(preg_match($pattern,$year)){

            $school = $_SESSION["work"];
            $table = $school.$year;

            $student_info = "شهرت_شاگردان".($year-11);
            $lastyear = $school.$year."12";
            $elevent=$school.($year-1)."11";
            $ten = $school.($year-2)."10";
            
            $db = mysqli_query($congeneral,"USE $school;");
            if($db){
                $row12 = mysqli_query($conn,"CREATE TABLE IF NOT EXISTS $lastyear(
                    student_nid int not null,
                    interpretation varchar(32) not null,
                    islamic_insight varchar(32) not null,
                    dari varchar(32) not null,
                    pashto varchar(32) not null,
                    english varchar(32) not null,
                    physics varchar(32) not null,
                    chemistry varchar(32) not null,
                    biology varchar(32) not null,
                    math varchar(32) not null,
                    geology varchar(32) not null,
                    history varchar(32) not null,
                    georaphy varchar(32) not null,
                    civic_education varchar(32) not null,
                    computer varchar(32) not null,
                    selective_subject varchar(32) not null,
                    sport varchar(32) not null,
                    reformation varchar(32) not null,
                    FOREIGN KEY (student_nid) REFERENCES student_infromation(student_nid)
                );");
                $row11 = mysqli_query($conn,"CREATE TABLE IF NOT EXISTS $elevent(
                    student_nid int not null,
                    interpretation varchar(32) not null,
                    islamic_insight varchar(32) not null,
                    dari varchar(32) not null,
                    pashto varchar(32) not null,
                    english varchar(32) not null,
                    physics varchar(32) not null,
                    chemistry varchar(32) not null,
                    biology varchar(32) not null,
                    math varchar(32) not null,
                    geology varchar(32) not null,
                    history varchar(32) not null,
                    georaphy varchar(32) not null,
                    civic_education varchar(32) not null,
                    computer varchar(32) not null,
                    selective_subject varchar(32) not null,
                    sport varchar(32) not null,
                    reformation varchar(32) not null,
                    FOREIGN KEY (student_nid) REFERENCES student_infromation(student_nid)
                );");
                $row10 = mysqli_query($conn,"CREATE TABLE IF NOT EXISTS $ten(
                    student_nid int not null,
                    interpretation varchar(32) not null,
                    islamic_insight varchar(32) not null,
                    dari varchar(32) not null,
                    pashto varchar(32) not null,
                    english varchar(32) not null,
                    physics varchar(32) not null,
                    chemistry varchar(32) not null,
                    biology varchar(32) not null,
                    math varchar(32) not null,
                    geology varchar(32) not null,
                    history varchar(32) not null,
                    georaphy varchar(32) not null,
                    civic_education varchar(32) not null,
                    computer varchar(32) not null,
                    selective_subject varchar(32) not null,
                    sport varchar(32) not null,
                    reformation varchar(32) not null,
                    FOREIGN KEY (student_nid) REFERENCES student_infromation(student_nid)
                );");

                if($row10 && $row11 && $row12){
                    $copyinginfo = mysqli_query($congeneral,"INSERT INTO maraf.student_infromation SELECT * FROM $student_info;");
                    $copy12 = mysqli_query($congeneral,"INSERT INTO maraf.$lastyear SELECT * FROM $school.$lastyear;");
                    $copy11 = mysqli_query($congeneral,"INSERT INTO maraf.$elevent SELECT * FROM $school.$elevent;");
                    $copy10 = mysqli_query($congeneral,"INSERT INTO maraf.$ten SELECT * FROM $school.$ten;");
                    if($copyinginfo && $copy12 && $copy11 && $copy10){
                        echo "send";
                    }
                    else {
                        ECHO "not send";
                    }
                }else {
                    echo "table not created";
                }
            }
        }else {
            echo "inc year";
        }
    }

?>