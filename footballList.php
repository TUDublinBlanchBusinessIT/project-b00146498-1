<?php
include("dbcon.php");

$sql = "SELECT * FROM footballbet";
$result = mysqli_query($conn, $sql);

if (!$result) {
    die('Error: ' . mysqli_error($conn));
}

while ($row = mysqli_fetch_assoc($result)) {
    $id = $row['id'];
    $footballteam = $row['footballteam'];
    $score = $row['score'];
    $date = $row['date'];
    $stake = $row['stake'];

    echo "<tr><td>$id</td><td>$footballteam</td><td>$score</td><td>$date</td><td>$stake</td></tr>";
}

?>