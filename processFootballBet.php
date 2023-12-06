<?php
include("dbcon.php");

$ft = $_POST['ft'];
$score = $_POST['score'];
$time = $_POST['time'];
$date = $_POST['date'];

INSERT INTO footballbet (footballteam, score, time, date) VALUES ('Arsenal', '3', '17:20:00', '2023-12-12');

?>