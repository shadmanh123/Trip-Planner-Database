<?php
$a = $_POST['column'];
$b = $_POST['table'];
include 'connect.php';
$conn = OpenCon();
$sql = "SELECT $a
FROM $b";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
echo "<table>
<tr>
<th class='borderclass'>$a</th>

</tr>";
// output data of each row
while($row = $result->fetch_assoc()) { echo
"<tr>
<td class='borderclass'>".$row["$a"]."</td>

</tr>";
}
echo "</table>";
} else {
echo "0 results";
}
CloseCon($conn);
?>