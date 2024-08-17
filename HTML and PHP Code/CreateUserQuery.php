<?php
$a = $_POST['uid'];
$b = $_POST['fname'];
$c = $_POST['lname'];
include 'connect.php';
$conn = OpenCon();
$sql = "INSERT INTO `client`(`ClientId`, `FirstName`, `LastName`) VALUES ('$a','$b','$c')";
$result = $conn->query($sql);

echo "Successfully created User Account with id number: $a";
CloseCon($conn);
?>