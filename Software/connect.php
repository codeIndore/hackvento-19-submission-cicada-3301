<?php

$link = mysqli_connect("localhost", "simplexm_root", "12345", "simplexm_automation"); // Check connection

if($link === false){
   die("ERROR: Could not connect. " . mysqli_connect_error());
}

date_default_timezone_set("Asia/Kolkata");
// Escape user inputs for security
$product = mysqli_real_escape_string($link, $_GET['product']);
$date = date("Y-m-d");
$time = date("h:i:sa");


// Attempt insert query execution
$sql = "INSERT INTO simplexm_automation.products(product) VALUES ('$product')";

if(mysqli_query($link, $sql)){
   echo "Records added successfully.";
} else{
   echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}

// Close connection
mysqli_close($link);
?>