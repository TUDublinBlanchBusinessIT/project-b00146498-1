<?php
include("dbcon.php");

$dogName = $_POST['dogName'];
$trapNo = $_POST['trapNo'];
$place = $_POST['place'];
$time = $_POST['time'];
$date = $_POST['date'];
$stake = $_POST['stake'];

$sql = "INSERT INTO dogbet (dogname, trapno, place, time, dateofrace, stake) 
        VALUES ('$dogName', '$trapNo', '$place', '$time', '$date', '$stake')";

if (mysqli_query($conn, $sql)) {
    echo "A new record added successfully";
} else {
    echo "Error: " . mysqli_error($conn);
}

mysqli_close($conn);
?>
