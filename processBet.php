<?php
include("dbcon.php");

$horsename = $_POST['hn'];
$place = $_POST['place'];
$time = $_POST['time'];
$date = $_POST['date'];
$stake = $_POST['stake'];

$sql = "INSERT INTO horsebet (horsename, place, time, dateofrace, stake) VALUES ('$horsename', '$place', '$time', '$date', '$stake')";

if (mysqli_query($conn, $sql)) {
    echo "A new record added successfully";
} else {
    echo "Error: " . mysqli_error($conn);
}

mysqli_close($conn);
?>