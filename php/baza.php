<?php

/*Definiowanie zmiennych z danymi niezbędnymi do połączenia z bazą danych*/
$servername = 'localhost';
$username = 'root';
$password = '';
$dbname = 'datapost';

/*Połączenie z bazą*/
$conn = new mysqli($servername, $username, $password, $dbname);

/*Komunikat o błędzie w przypadku problemów z połączeniem*/
if ($conn->connect_error) {
   die("<h1>Jeśli widzisz ten komunikat to wołaj CZARKA, bo KTOŚ tu coś naklikał: (•̀o•́)ง(•̀o•́)ง(•̀o•́)ง</h1><br><h2><h4>A tak serio to coś z bazą nie halo.</h4>" . $conn->connect_error)."</h2> ";
}
else {
  if (!$conn->set_charset("utf8")) {
      printf("Co to je ten utf8? ヽ(ಠ_ಠ)ノ: %s\n", $conn->error);
      exit();
  }
}

?>
