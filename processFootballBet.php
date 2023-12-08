<?php
include("dbcon.php");

$footballteam = $_POST['footballteam'];
$score = $_POST['score'];
$date = $_POST['date'];
$stake = $_POST['stake'];

$sql = "INSERT INTO footballbet (footballteam, score, date, stake) VALUES ('$footballteam', '$score', '$date', '$stake')";

if (mysqli_query($conn, $sql)) {
    echo "A new record added successfully";
} else {
    echo "Error: " . mysqli_error($conn);
}
mysqli_close($conn);

session_start();

if (isset($_POST['showbet'])) {
    $_SESSION['showbet'] = 'on';
    header("Location: processBet.html");
} else {
    $_SESSION['showbet'] = 'off';
    header("Location: showBet.php");
}

session_destroy();
?>