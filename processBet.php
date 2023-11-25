<?php
include("dbcon.php");

$horseName = $_POST['hn'];
$time = $_POST['time'];
$date = $_POST['date'];
$place = $_POST['place'];
$stake = $_POST['stake'];

//echo "$firstName $surName $age";

$sql = "INSERT INTO horses (HorseName, Time, Date, Place, Stake) VALUES ('$horseName', '$time', '$date', '$place', '$stake')";

echo $sql;

if (mysqli_query($conn, $sql)) {
    echo "a new record successfully";
} 
else {
    echo "Error";
}
?>