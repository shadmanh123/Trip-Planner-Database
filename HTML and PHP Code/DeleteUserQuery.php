<?php
$a = $_POST['uid'];
include 'connect.php';
$conn = OpenCon();
$sql = "DELETE FROM `client` WHERE clientid = $a";
$result = $conn->query($sql);

echo "Successfully deleted User Account with id number: $a";
CloseCon($conn);
?>