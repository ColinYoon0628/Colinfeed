<?php
ob_start(); // Turns on output buffering
session_start();
$timezone = date_default_timezone_set("America/Toronto");
$con = mysqli_connect("us-cdbr-east-02.cleardb.com", "bfaf8173570296", "05bfd8b8", "heroku_7a6b2cc1468e904");
if(mysqli_connect_errno()){
    echo "Failed to connect: " . mysqli_connect_errno();
}
?>
//mysql://bfaf8173570296:05bfd8b8@us-cdbr-east-02.cleardb.com/heroku_7a6b2cc1468e904?reconnect=true