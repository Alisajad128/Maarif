<?php
require "connection.php";

if(isset($_GET["school"])){
    $school = $_GET["school"];
    $conect = mysqli_query($congeneral,"use $school;");
    if($conect){
        $row = mysqli_query($congeneral,"show tables");
        $tmp = "";
        while($arr = mysqli_fetch_assoc($row)){
            $tables = "Tables_in_".$school;// index of table
            $year = 1401;//date("Y");
            if($arr[$tables]=="شهرت_شاگردان".$year){
                $tmp = "شهرت_شاگردان".$year;
                // save tha name of info table of selected school for enter info of applicant;
            }
        }
        if($tmp =="شهرت_شاگردان$year"){
            echo $tmp;
        }else{
            echo "notyet";
        }
    }

}

?>
