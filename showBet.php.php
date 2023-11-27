<?php
include("dbcon.php");


$sql = "select * from horsebet";

$result = mysqli_query($conn,$sql);

echo "<TABLE border='1'>";
while($row=mysqli_fetch_assoc($result)) {
    $hn = $row['horsename'];
    $place = $row['place'];
    $time = $row['time'];
    $dob = $row['dateofrace'];
    $stake = $row['stake'];

    echo "<TR><TD>$hn</TD><TD>$place</TD><TD>$time</TD><TD>$dob</TD><TD>$stake</TD></TR>";
}
echo "</TABLE>";

mysqli_close($conn);
?>