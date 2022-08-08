<?php
    session_start();
    require "connection.php";
    if(isset($_GET["year"])){
        $year = $_GET["year"];
        $class = $_GET["class"];
        $user = $_SESSION["username"];
        $yearP = '/^14[0-9]{2}/';
        if(preg_match($yearP,$year)){
            $result = mysqli_query($conn,"SELECT * FROM users where username='$user'");
            if(mysqli_num_rows($result)>0){
                while($arr = mysqli_fetch_assoc($result)){
                    $_SESSION["schoolname"]=$arr["workplace"];
                }
            }
            $schoolname = $_SESSION['schoolname'];
            $school = mysqli_query($congeneral,"USE $schoolname");
            if($school){
                if($class==0){
                    $newstudent = "شهرت_شاگردان".$year;
                    $re = mysqli_query($congeneral,"CREATE TABLE IF NOT EXISTS $newstudent(
                        student_nid int not null,
                        student_name varchar(64) not null,
                        father_name varchar(64) not null,
                        grandfather_name varchar(64) not null,
                        dofbrith date not null,
                        photo varchar(256) not null,
                        primary key (student_nid)
                    )");
                    if($re){
                        echo "ایجاد شد";
                        exit();
                    }else {
                        echo "ایجاد نشد";
                    }
                }
                $registeryear=0;
               for($x=1;$x<=12;$x++){
                    if($class==1){
                        $registeryear = $year;
                    }
                   elseif($class==$x){
                       $registeryear = $year-($x-1);
                   }
               }
                $tablename = $_SESSION["schoolname"].$year.$class;
                $maintable = "شهرت_شاگردان".$registeryear;
                if($class>=1 && $class<=4){
                    $re = mysqli_query($congeneral,"CREATE TABLE IF NOT EXISTS $tablename(
                        student_nid int not null,
                        dari varchar(32) not null,
                        math varchar(32) not null,
                        skills varchar(32) not null,
                        Quran varchar(32) not null,
                        islamicStudyes varchar(32) not null,
                        sport varchar(32) not null,
                        KEY (student_nid) REFERENCES $maintable(student_nid)
                    )");
                    if($re){
                        echo "ایجاد شد";
                        exit();
                    }else {
                        # code...
                        echo "ایجاد نشد";
                    }
                            
                }
                elseif($class>=5 && $class<=7){
                    $re = mysqli_query($congeneral,"CREATE TABLE IF NOT EXISTS $tablename(
                        student_nid int not null,
                        Quran varchar(32) not null,
                        islamicStudyes varchar(32) not null,
                        dari varchar(32) not null,
                        pashto varchar(32) not null,
                        Arabic varchar(32) not null,
                        english varchar(32) not null,
                        chemistry varchar(32) not null,
                        physics varchar(32) not null,
                        biology varchar(32) not null,
                        math varchar(32) not null,
                        history varchar(32) not null,
                        georaphy varchar(32) not null,
                        civic_education varchar(32) not null,
                        skills varchar(32) not null,
                        selective_subject varchar(32) not null,
                        art varchar(32) not null,
                        sport varchar(32) not null,
                        reformation varchar(32) not null,
                        FOREIGN KEY (student_nid) REFERENCES $maintable(student_nid)
                    )");
                    if($re){
                        echo "ایجاد شد";
                        exit();
                    }else { 
                        # code...
                        echo "ایجاد نشد";
                    }
                }
                elseif($class>=8 && $class<=12){
                    $re =mysqli_query($congeneral,"CREATE TABLE IF NOT EXISTS $tablename(
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
                        FOREIGN KEY (student_nid) REFERENCES $maintable(student_nid)
                    )");
                    if($re){
                        echo "ایجاد شد";
                        exit();
                    }else {
                        # code...
                        echo "ایجاد نشد";
                    }
                }
            }
            else {
                # if the database doesnot exist
                echo "دیتابس با این نام در سیستم موجود نیست";
            }
        }
        else{
            echo "سالی تعلیمی درست نیست";
            exit();
        }
    }
    
?>