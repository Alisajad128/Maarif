<?php
require "connection.php";
    # IN THIS PAGE JUST CHECKING THAT THE PERSON IS IN THE THAT SCHOOL OR NOT;
    if(isset($_GET["oldschool"])){
        $oldschool = $_GET["oldschool"];
        $startyear = "شهرت_شاگردان".$_GET["year"];
        $id = $_GET["id"];
        $db = mysqli_query($congeneral,"USE $oldschool");
        if($db){
            $row0 = mysqli_query($congeneral,"SELECT * FROM `$startyear` WHERE student_nid=$id;");
            if($row0){
                echo "found";
            }
            else {
                echo "notfound";
            }
        }
    }
?>