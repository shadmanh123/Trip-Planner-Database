<?php
include 'connect.php';
$conn = OpenCon();

$sql = "SELECT CountryName, Count(RiskType), AVG(RiskSeverity) 
FROM mayhave_travelrisk
WHERE RiskSeverity IN(SELECT RiskSeverity
		from mayhave_travelrisk
		WHERE RiskSeverity > 7)
GROUP BY CountryName";

$result = $conn->query($sql);
if ($result->num_rows > 0) {
echo "<table>
<tr>
<th class='borderclass'>CountryName</th>
<th class='borderclass'>TotalRiskTypes</th>
<th class='borderclass'>AverageRiskSeverity</th>
</tr>";
// output data of each row
while($row = $result->fetch_assoc()) { echo
"<tr>
<td class='borderclass'>".$row["CountryName"]."</td>
<td class='borderclass'>".$row["Count(RiskType)"]."</td>
<td class='borderclass'>".$row["AVG(RiskSeverity)"]."</td>
</tr>";
}
echo "</table>";
} else {
echo "0 results";
}
CloseCon($conn);
?>