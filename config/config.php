<?php
ob_start(); // Turns on output buffering
session_start();
$timezone = date_default_timezone_set("America/Toronto");
$con = mysqli_connect("us-cdbr-east-02.cleardb.com", "ba0fe2c00b52bf", "02e2de3f", "heroku_461375a663129c6");
if(mysqli_connect_errno()){
    echo "Failed to connect: " . mysqli_connect_errno();
}
?>