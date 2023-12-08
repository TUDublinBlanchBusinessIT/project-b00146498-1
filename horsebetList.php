<?php
include("dbcon.php");

$sql = "SELECT * FROM horsebet";
$result = mysqli_query($conn, $sql);

if (!$result) {
    die('Error: ' . mysqli_error($conn));
}
while ($row = mysqli_fetch_assoc($result)) {
    $id = $row['id'];
    $horsename = $row['horsename'];
    $place = $row['place'];
    $time = $row['time'];
    $dateofrace = $row['dateofrace'];
    $stake = $row['stake'];
    $odds = $row['odds'];

    echo "<tr><td>$id</td><td>$horsename</td><td>$place</td><td>$time</td><td>$dateofrace</td><td>$stake</td><td>$odds</td></tr>";
}



?>