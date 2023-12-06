<?php
include("dbcon.php");

$horsename = $_POST['hn'];
$place = $_POST['place'];
$time = $_POST['time'];
$date = $_POST['date'];
$stake = $_POST['stake'];
$odds = $_POST['odds'];

$potentialWinnings = ($stake * $odds) + $stake;

$sql = "INSERT INTO horsebet (horsename, place, time, dateofrace, stake, odds) VALUES ('$horsename', '$place', '$time', '$date', '$stake', '$odds')";

session_start();
if (isset($_POST['showbet'])) {
    $_SESSION['showbet'] = 'on';
    header("Location: processDogBet.html");
}
else {
    $_SESSION['showbet'] = 'off';
    header("Location: showBet.php");
}

mysqli_close($conn);
?>