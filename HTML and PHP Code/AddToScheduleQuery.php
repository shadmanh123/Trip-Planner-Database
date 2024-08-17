<?php
$a = $_POST['sid'];
$b = $_POST['city'];
include 'connect.php';
$conn = OpenCon();
$sql = "INSERT INTO `filledwith`(`ScheduleId`, `CityName`) VALUES ('$a','$b')";
$result = $conn->query($sql);

echo "Successfully added city '$b' to Schedule id '$a'";
CloseCon($conn);
?>