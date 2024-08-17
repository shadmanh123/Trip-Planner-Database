<?php
$a = $_POST['column'];
$b = $_POST['table'];
$c = $_POST['column2'];
include 'connect.php';
$conn = OpenCon();
$sql = "SELECT $a, $b FROM $b WHERE $c < 1";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
echo "<table>
<tr>
<th class='borderclass'>$a</th>
<th class='borderclass'>$b</th>

</tr>";
// output data of each row
while($row = $result->fetch_assoc()) { echo
"<tr>
<td class='borderclass'>".$row["$a"]."</td>
<td class='borderclass'>".$row["$b"]."</td>

</tr>";
}
echo "</table>";
} else {
echo "0 results";
}
CloseCon($conn);
?>