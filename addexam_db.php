<?php

require "config/dbconfig.php";

$examid=$_POST["examid"];
$prn_no=$_POST["prn_no"];
$subjectcode=$_POST["subjectcode"];
$datetime=$_POST["datetime"];
$status=$_POST["status"];



$r="insert into exam (examid,prn_no, subjectcode,datetime,status)
     values('$examid','$prn_no','$subjectcode','$datetime','$status')";
$result = mysqli_query($con,$r);

   if($result){
        header("location:error.html");
    }
   else{
       header("location:starter.html");
       die();
    
}

?>