<?php
$a = $_POST['sid'];
include 'connect.php';
$conn = OpenCon();
$sql = "SELECT ScheduleId, CityName
FROM filledwith
WHERE ScheduleId = $a";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
echo "<table>
<tr>
<th class='borderclass'>ScheduleId</th>
<th class='borderclass'>CityName</th>

</tr>";
// output data of each row
while($row = $result->fetch_assoc()) { echo
"<tr>
<td class='borderclass'>".$row["ScheduleId"]."</td>
<td class='borderclass'>".$row["CityName"]."</td>

</tr>";
}
echo "</table>";
} else {
echo "0 results";
}
CloseCon($conn);
?>