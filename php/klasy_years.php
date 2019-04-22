<?php
//including the base of connection
require_once('../php/baza.php');

//query
$sql = "SELECT DISTINCT rok  FROM klasy  ORDER BY  rok DESC";

$result = $conn->query($sql);

//counter for option value
$i = 1;
//displaying available years
while ($row = $result->fetch_assoc())
{
  echo "<option value='". $i++ ."' >". $row['rok'] . "</option>";
}

$result = $conn->close();
?>
