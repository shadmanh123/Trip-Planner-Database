<?php
$a = $_POST['uid'];
$b = $_POST['sid'];
$c = $_POST['start'];
$d = $_POST['end'];
include 'connect.php';
$conn = OpenCon();
$sql = "INSERT INTO `creates_schedule`(`ClientId`, `ScheduleId`, `ScheduleStartDate`, `ScheduleEndDate`) 
VALUES ('$a','$b','$c','$d')";
$result = $conn->query($sql);

echo "Schedule $b successfully created for user $a from $c to $d";
CloseCon($conn);
?>