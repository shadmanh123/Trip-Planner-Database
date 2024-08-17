<?php
$a = $_POST['t1'];
$b = $_POST['c1'];
$c = $_POST['c2'];
$d = $_POST['f1'];
include 'connect.php';
$conn = OpenCon();

$sql = "SELECT $b, $c 
FROM $a
WHERE $c LIKE '$d%'";

$result = $conn->query($sql);
if ($result->num_rows > 0) {
echo "<table>
<tr>
<th class='borderclass'>$b</th>
<th class='borderclass'>$c</th>
</tr>";
// output data of each row
while($row = $result->fetch_assoc()) { echo
"<tr>
<td class='borderclass'>".$row["$b"]."</td>
<td class='borderclass'>".$row["$c"]."</td>
</tr>";
}
echo "</table>";
} else {
echo "0 results";
}
CloseCon($conn);
?>