<?php
include("dbcon.php");

$horsename = $_POST['hn'];
$place = $_POST['place'];
$time = $_POST['time'];
$date = $_POST['date'];
$stake = $_POST['stake'];
$odds = $_POST['odds'];

$potentialWinnings = $stake * ($odds + 1);

$sql = "INSERT INTO horsebet (horsename, place, time, dateofrace, stake, odds) VALUES ('$horsename', '$place', '$time', '$date', '$stake', '$odds')";

if (mysqli_query($conn, $sql)) {
    echo "A new record added successfully. Potential Winnings: $potentialWinnings";
} else {
    echo "Error: " . mysqli_error($conn);
}

mysqli_close($conn);
?>