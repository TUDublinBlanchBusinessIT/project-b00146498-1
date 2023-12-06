<?php
include("dbcon.php");

$ft = $_POST['team'];
$score = $_POST['score'];
$date = $_POST['date'];
$stake = $_POST['stake'];

$sql = "INSERT INTO footballbet (footballteam, score, date, stake) VALUES ('$ft', '$score', '$date', '$stake')";

if (mysqli_query($conn, $sql)) {
    echo "A new record added successfully";
} else {
    echo "Error: " . mysqli_error($conn);
}

?>