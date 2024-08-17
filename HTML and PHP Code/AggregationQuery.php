<?php
include 'connect.php';
$conn = OpenCon();

$sql = "SELECT CountryName, CurrencyNameY, ExchangeRate
FROM exchangerate, uses
WHERE exchangerate IN 
(SELECT MAX(exchangerate) FROM exchangerate) AND uses.CurrencyName = exchangerate.CurrencyNameY";

$result = $conn->query($sql);
if ($result->num_rows > 0) {
echo "<table>
<tr>
<th class='borderclass'>CountryName</th>
<th class='borderclass'>CurrencyName</th>
<th class='borderclass'>ExchangeRate</th>
</tr>";
// output data of each row
while($row = $result->fetch_assoc()) { echo
"<tr>
<td class='borderclass'>".$row["CountryName"]."</td>
<td class='borderclass'>".$row["CurrencyNameY"]."</td>
<td class='borderclass'>".$row["ExchangeRate"]."</td>
</tr>";
}
echo "</table>";
} else {
echo "0 results";
}
CloseCon($conn);
?>