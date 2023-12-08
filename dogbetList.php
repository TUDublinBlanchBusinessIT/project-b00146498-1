<?php
include("dbcon.php");

$sql = "SELECT * FROM dogbet";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {
    $id = $row['id'];
    $dogName = $row['dogname'];
    $trapNo = $row['trapno'];
    $place = $row['place'];
    $time = $row['time'];
    $dateOfRace = $row['dateofrace'];
    $stake = $row['stake'];

    echo "<tr><td>$id</td><td>$dogName</td><td>$trapNo</td><td>$place</td><td>$time</td><td>$dateOfRace</td><td>$stake</td></tr>";
}



mysqli_close($conn);
?>