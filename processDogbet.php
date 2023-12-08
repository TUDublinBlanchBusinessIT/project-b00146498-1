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

session_start();

if (isset($_POST['showbet'])) {
    $_SESSION['showbet'] = 'on';
    header("Location: FootballBet.html");
} else {
    $_SESSION['showbet'] = 'off';
    header("Location: showBet.php");
}

session_destroy();
?>