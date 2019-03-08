<?php
//including the base of connection
require_once('../php/baza.php');

//declaring variable sended by ajax
$year = $_POST['year'];

//query
$sql = "SELECT * FROM positions natural join emploees where rok='$year' ";

$result = $conn->query($sql);
  /*Przygotowanie tablicy, która będzie przechowywać dane z bazy*/
$ready_result = array();

/*Wykonanie zapytania SELECT*/
/*Pętla typu "while" oparta o funkcję mysqli_fetch_row,
wykonująca się na wyniku zapytania w celu zorganizowania pobranych danych w tabelę */
while ($row = $result->fetch_assoc())
{
  $ready_result[] = $row;
}
echo json_encode($ready_result);

$result = $conn->close();
?>
