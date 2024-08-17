<?php
$a = $_POST['uid'];
$b = $_POST['fname'];
$c = $_POST['lname'];
include 'connect.php';
$conn = OpenCon();
$sql = "UPDATE `client` SET `ClientId`='$a',`FirstName`='$b',`LastName`='$c' 
WHERE ClientId = $a";
$result = $conn->query($sql);

echo "Successfully updated your first and last name";
CloseCon($conn);
?>