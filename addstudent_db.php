<?php

require "config/dbconfig.php";


$prn_no=$_POST["prn_no"];
$student_name=$_POST["student_name"];
$student_email=$_POST["student_email"];
$password=$_POST["password"];
$student_dept=$_POST["student_dept"];
$student_mobile=$_POST["student_mobile"];
 

$r="insert into student (prn_no, student_name,student_email,password,student_dept,student_mobile)
     values('$prn_no','$student_name','$student_email','$password','$student_dept','$student_mobile')";
$result = mysqli_query($con,$r);

   if($result){
        header("location:error.html");
    }
   else{
       header("location:starter.html");
       die();
    
}

?>