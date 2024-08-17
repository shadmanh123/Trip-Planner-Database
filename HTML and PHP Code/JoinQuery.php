<?php
$a = $_POST['t1'];
$b = $_POST['t2'];
$c = $_POST['t3'];
$d = $_POST['column1'];
$e = $_POST['column2'];
$f = $_POST['column3'];
$g = $_POST['column4'];
include 'connect.php';
$conn = OpenCon();

$sql = "SELECT cr.$d, cr.$e, c.$f, a.$g
FROM $a cr, $b c, $c a
WHERE cr.$e = c.$e AND c.$f = a.$f";


$result = $conn->query($sql);
if ($result->num_rows > 0) {
echo "<table>
<tr>
<th class='borderclass'>$d</th>
<th class='borderclass'>$e</th>
<th class='borderclass'>$f</th>
<th class='borderclass'>$g</th>
</tr>";
// output data of each row
while($row = $result->fetch_assoc()) { echo
"<tr>
<td class='borderclass'>".$row["$d"]."</td>
<td class='borderclass'>".$row["$e"]."</td>
<td class='borderclass'>".$row["$f"]."</td>
<td class='borderclass'>".$row["$g"]."</td>
</tr>";
}
echo "</table>";
} else {
echo "0 results";
}
CloseCon($conn);
?>