<?php
include("dbcon.php");

$sql = "SELECT * FROM dogbet";
$result = mysqli_query($conn, $sql);

$sql = "SELECT * FROM horsebet";
$result = mysqli_query($conn, $sql);

$sql = "SELECT * FROM footballbet";
$result = mysqli_query($conn, $sql);



?>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
    <body>
        <div class="container mt-3">
            <h2>Dog Bets</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Dog Name</th>
                        <th>Trap No</th>
                        <th>Place</th>
                        <th>Time</th>
                        <th>Date of Race</th>
                        <th>Stake</th>
                    </tr>
                </thead>
                <tbody>
                    <?php include("dogbetList.php");?>
                </tbody>
            </table>

            <h2>Horse Bets</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Horse Name</th>
                        <th>Place</th>
                        <th>Time</th>
                        <th>Date of Race</th>
                        <th>Stake</th>
                        <th>Odds</th>
                    </tr>
                </thead>
                <tbody>
                    <?php include("horsebetList.php");?>
                </tbody>
            </table>

            <h2>Football Bets</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Football Team</th>
                        <th>Score</th>
                        <th>Date</th>
                        <th>Stake</th>
                    </tr>
                </thead>
                <tbody>
                    <?php include("footballList.php");?>
                </tbody>
            </table>
        </div>
    </body>
</html>
