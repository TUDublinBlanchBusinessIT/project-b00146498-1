<?php
include("dbcon.php");
$firstname = $_POST['fn'];
$surname = $_POST['sn'];

$sql = "INSERT INTO customer (firstname, surname) VALUES ('$firstname', '$surname')";

if (mysqli_query($conn, $sql)) {
    echo "A new record added successfully.";
} else {
    echo "Error: " . mysqli_error($conn);
}

mysqli_close($conn);

?>