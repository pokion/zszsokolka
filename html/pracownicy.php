<!DOCTYPE html>
<html lang="PL">
<head>
	<title>Rekrutacja</title>

	<?php
		include_once('includes/header.php');
		include_once('../php/config.php');
		$inc = 'pracownicy';
	?>

</head>
<body>

  	<?php
  		include_once('includes/nav.php');
  	?>
  <div class="container">
    <div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2018/2019</h3>
              <div class="carousel">
				<?php
						// Łączenie
						$conn = new mysqli($servername, $username, $password, $dbname);
						// Sprawdzanie
						if ($conn->connect_error) {
							 die("<h1>Jeśli widzisz ten komunikat to wołaj CZARKA, bo KTOŚ tu coś naklikał: (•̀o•́)ง(•̀o•́)ง(•̀o•́)ง</h1><br><h2>" . $conn->connect_error)."</h2> ";
						}

						/* Zmiana kodownaia na UTF-8 */
						if (!$conn->set_charset("utf8")) {
						    printf("Co to je ten utf8? ヽ(ಠ_ಠ)ノ: %s\n", $conn->error);
						    exit();
						}

						// Wypisuje nauczycieli z danego rocznika
						$carousel = "SELECT * FROM positions natural join emploees where rok='2018/2019'";


						$result = $conn->query($carousel);

						if ($result->num_rows > 0) {
				       while($row = $result->fetch_assoc()) {
								 echo "<a class=\"carousel-item\" href=\"#one!\"><span class=\"podpis\">" . $row["position"]. "<br>". $row["position2"]."<br> ".  $row["position3"]. "</span><img src=" . $row["photo_path"]. " alt=\"Brak zdjęcia :'(\"><span class=\"podpis\">". $row["degree"] . " ". $row["name"]. "</span></a>";
							 }
						} else {
				       echo "Halo tu baza, jestem pusta!<br><h1> ಥ_ಥ <br> ಥ_ಥ</h1>";
				    }
				    $conn->close();
				?>
            	</div>
      </div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2017/2018</h3>
							<div class="carousel">
								<?php
										// Łączenie
										$conn = new mysqli($servername, $username, $password, $dbname);
										// Sprawdzanie
										if ($conn->connect_error) {
											 die("<h1>Jeśli widzisz ten komunikat to wołaj CZARKA, bo KTOŚ tu coś naklikał: (•̀o•́)ง(•̀o•́)ง(•̀o•́)ง</h1><br><h2>" . $conn->connect_error)."</h2> ";
										}

										/* Zmiana kodownaia na UTF-8 */
										if (!$conn->set_charset("utf8")) {
										    printf("Co to je ten utf8? ヽ(ಠ_ಠ)ノ: %s\n", $conn->error);
										    exit();
										}

										// Wypisuje nauczycieli z danego rocznika
										$carousel = "SELECT * FROM positions natural join emploees where rok='2017/2018'";


										$result = $conn->query($carousel);

										if ($result->num_rows > 0) {
								       while($row = $result->fetch_assoc()) {
												 echo "<a class=\"carousel-item\" href=\"#one!\"><span class=\"podpis\">" . $row["position"]. "<br>". $row["position2"]."<br> ".  $row["position3"]. "</span><img src=" . $row["photo_path"]. " alt=\"Brak zdjęcia :'(\"><span class=\"podpis\">". $row["degree"] . " ". $row["name"]. "</span></a>";
											 }
										} else {
								       echo "Halo tu baza, jestem pusta!<br><h1> ಥ_ಥ <br> ಥ_ಥ</h1>";
								    }
								    $conn->close();
								?>

							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2016/2017</h3>
              <div class="carousel">
								<?php
										// Łączenie
										$conn = new mysqli($servername, $username, $password, $dbname);
										// Sprawdzanie
										if ($conn->connect_error) {
											 die("<h1>Jeśli widzisz ten komunikat to wołaj CZARKA, bo KTOŚ tu coś naklikał: (•̀o•́)ง(•̀o•́)ง(•̀o•́)ง</h1><br><h2>" . $conn->connect_error)."</h2> ";
										}

										/* Zmiana kodownaia na UTF-8 */
										if (!$conn->set_charset("utf8")) {
												printf("Co to je ten utf8? ヽ(ಠ_ಠ)ノ: %s\n", $conn->error);
												exit();
										}

										// Wypisuje nauczycieli z danego rocznika
										$carousel = "SELECT * FROM positions natural join emploees where rok='2016/2017'";


										$result = $conn->query($carousel);

										if ($result->num_rows > 0) {
											 while($row = $result->fetch_assoc()) {
												 echo "<a class=\"carousel-item\" href=\"#one!\"><span class=\"podpis\">" . $row["position"]. "<br>". $row["position2"]."<br> ".  $row["position3"]. "</span><img src=" . $row["photo_path"]. " alt=\"Brak zdjęcia :'(\"><span class=\"podpis\">". $row["degree"] . " ". $row["name"]. "</span></a>";
											 }
										} else {
											 echo "<div class=\"error center-align\">Halo tu baza, jestem pusta! <br>ಥ_ಥ <br> ಥ_ಥ</div>";
										}
										$conn->close();
								?>


            	</div>
      </div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2015/2016</h3>
              <div class="carousel">
								<?php
										// Łączenie
										$conn = new mysqli($servername, $username, $password, $dbname);
										// Sprawdzanie
										if ($conn->connect_error) {
											 die("<h1>Jeśli widzisz ten komunikat to wołaj CZARKA, bo KTOŚ tu coś naklikał: (•̀o•́)ง(•̀o•́)ง(•̀o•́)ง</h1><br><h2>" . $conn->connect_error)."</h2> ";
										}

										/* Zmiana kodownaia na UTF-8 */
										if (!$conn->set_charset("utf8")) {
												printf("Co to je ten utf8? ヽ(ಠ_ಠ)ノ: %s\n", $conn->error);
												exit();
										}

										// Wypisuje nauczycieli z danego rocznika
										$carousel = "SELECT * FROM positions natural join emploees where rok='2015/2016'";


										$result = $conn->query($carousel);

										if ($result->num_rows > 0) {
											 while($row = $result->fetch_assoc()) {
												 echo "<a class=\"carousel-item\" href=\"#one!\"><span class=\"podpis\">" . $row["position"]. "<br>". $row["position2"]."<br> ".  $row["position3"]. "</span><img src=" . $row["photo_path"]. " alt=\"Brak zdjęcia :'(\"><span class=\"podpis\">". $row["degree"] . " ". $row["name"]. "</span></a>";
											 }
										} else {
											 echo "<div class=\"error center-align\">Halo tu baza, jestem pusta! <br>ಥ_ಥ <br> ಥ_ಥ</div>";
										}
										$conn->close();
								?>

            	</div>
      </div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2014/2015</h3>
							<div class="carousel">
								<?php
										// Łączenie
										$conn = new mysqli($servername, $username, $password, $dbname);
										// Sprawdzanie
										if ($conn->connect_error) {
											 die("<h1>Jeśli widzisz ten komunikat to wołaj CZARKA, bo KTOŚ tu coś naklikał: (•̀o•́)ง(•̀o•́)ง(•̀o•́)ง</h1><br><h2>" . $conn->connect_error)."</h2> ";
										}

										/* Zmiana kodownaia na UTF-8 */
										if (!$conn->set_charset("utf8")) {
												printf("Co to je ten utf8? ヽ(ಠ_ಠ)ノ: %s\n", $conn->error);
												exit();
										}

										// Wypisuje nauczycieli z danego rocznika
										$carousel = "SELECT * FROM positions natural join emploees where rok='2014/2015'";


										$result = $conn->query($carousel);

										if ($result->num_rows > 0) {
											 while($row = $result->fetch_assoc()) {
												 echo "<a class=\"carousel-item\" href=\"#one!\"><span class=\"podpis\">" . $row["position"]. "<br>". $row["position2"]."<br> ".  $row["position3"]. "</span><img src=" . $row["photo_path"]. " alt=\"Brak zdjęcia :'(\"><span class=\"podpis\">". $row["degree"] . " ". $row["name"]. "</span></a>";
											 }
										} else {
											 echo "<div class=\"error center-align\">Halo tu baza, jestem pusta! <br>ಥ_ಥ <br> ಥ_ಥ</div>";
										}
										$conn->close();
								?>


							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2013/2014</h3>
							<div class="carousel">
								<?php
										// Łączenie
										$conn = new mysqli($servername, $username, $password, $dbname);
										// Sprawdzanie
										if ($conn->connect_error) {
											 die("<h1>Jeśli widzisz ten komunikat to wołaj CZARKA, bo KTOŚ tu coś naklikał: (•̀o•́)ง(•̀o•́)ง(•̀o•́)ง</h1><br><h2>" . $conn->connect_error)."</h2> ";
										}

										/* Zmiana kodownaia na UTF-8 */
										if (!$conn->set_charset("utf8")) {
												printf("Co to je ten utf8? ヽ(ಠ_ಠ)ノ: %s\n", $conn->error);
												exit();
										}

										// Wypisuje nauczycieli z danego rocznika
										$carousel = "SELECT * FROM positions natural join emploees where rok='2013/2014'";


										$result = $conn->query($carousel);

										if ($result->num_rows > 0) {
											 while($row = $result->fetch_assoc()) {
												 echo "<a class=\"carousel-item\" href=\"#one!\"><span class=\"podpis\">" . $row["position"]. "<br>". $row["position2"]."<br> ".  $row["position3"]. "</span><img src=" . $row["photo_path"]. " alt=\"Brak zdjęcia :'(\"><span class=\"podpis\">". $row["degree"] . " ". $row["name"]. "</span></a>";
											 }
										} else {
											 echo "<div class=\"error center-align\">Halo tu baza, jestem pusta! <br>ಥ_ಥ <br> ಥ_ಥ</div>";
										}
										$conn->close();
								?>


							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2012/2014</h3>
							<div class="carousel">
								<?php
										// Łączenie
										$conn = new mysqli($servername, $username, $password, $dbname);
										// Sprawdzanie
										if ($conn->connect_error) {
											 die("<h1>Jeśli widzisz ten komunikat to wołaj CZARKA, bo KTOŚ tu coś naklikał: (•̀o•́)ง(•̀o•́)ง(•̀o•́)ง</h1><br><h2>" . $conn->connect_error)."</h2> ";
										}

										/* Zmiana kodownaia na UTF-8 */
										if (!$conn->set_charset("utf8")) {
												printf("Co to je ten utf8? ヽ(ಠ_ಠ)ノ: %s\n", $conn->error);
												exit();
										}

										// Wypisuje nauczycieli z danego rocznika
										$carousel = "SELECT * FROM positions natural join emploees where rok='2012/2014'";


										$result = $conn->query($carousel);

										if ($result->num_rows > 0) {
											 while($row = $result->fetch_assoc()) {
												 echo "<a class=\"carousel-item\" href=\"#one!\"><span class=\"podpis\">" . $row["position"]. "<br>". $row["position2"]."<br> ".  $row["position3"]. "</span><img src=" . $row["photo_path"]. " alt=\"Brak zdjęcia :'(\"><span class=\"podpis\">". $row["degree"] . " ". $row["name"]. "</span></a>";
											 }
										} else {
											 echo "<div class=\"error center-align\">Halo tu baza, jestem pusta! <br>ಥ_ಥ <br> ಥ_ಥ</div>";
										}
										$conn->close();
								?>


							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2011/2011</h3>
							<div class="carousel">
								<?php
										// Łączenie
										$conn = new mysqli($servername, $username, $password, $dbname);
										// Sprawdzanie
										if ($conn->connect_error) {
											 die("<h1>Jeśli widzisz ten komunikat to wołaj CZARKA, bo KTOŚ tu coś naklikał: (•̀o•́)ง(•̀o•́)ง(•̀o•́)ง</h1><br><h2>" . $conn->connect_error)."</h2> ";
										}

										/* Zmiana kodownaia na UTF-8 */
										if (!$conn->set_charset("utf8")) {
												printf("Co to je ten utf8? ヽ(ಠ_ಠ)ノ: %s\n", $conn->error);
												exit();
										}

										// Wypisuje nauczycieli z danego rocznika
										$carousel = "SELECT * FROM positions natural join emploees where rok='2011/2011'";


										$result = $conn->query($carousel);

										if ($result->num_rows > 0) {
											 while($row = $result->fetch_assoc()) {
												 echo "<a class=\"carousel-item\" href=\"#one!\"><span class=\"podpis\">" . $row["position"]. "<br>". $row["position2"]."<br> ".  $row["position3"]. "</span><img src=" . $row["photo_path"]. " alt=\"Brak zdjęcia :'(\"><span class=\"podpis\">". $row["degree"] . " ". $row["name"]. "</span></a>";
											 }
										} else {
											 echo "<div class=\"error center-align\">Halo tu baza, jestem pusta! <br>ಥ_ಥ <br> ಥ_ಥ</div>";
										}
										$conn->close();
								?>



							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2010/2011</h3>
							<div class="carousel">
								<?php
										// Łączenie
										$conn = new mysqli($servername, $username, $password, $dbname);
										// Sprawdzanie
										if ($conn->connect_error) {
											 die("<h1>Jeśli widzisz ten komunikat to wołaj CZARKA, bo KTOŚ tu coś naklikał: (•̀o•́)ง(•̀o•́)ง(•̀o•́)ง</h1><br><h2>" . $conn->connect_error)."</h2> ";
										}

										/* Zmiana kodownaia na UTF-8 */
										if (!$conn->set_charset("utf8")) {
												printf("Co to je ten utf8? ヽ(ಠ_ಠ)ノ: %s\n", $conn->error);
												exit();
										}

										// Wypisuje nauczycieli z danego rocznika
										$carousel = "SELECT * FROM positions natural join emploees where rok='2010/2011'";


										$result = $conn->query($carousel);

										if ($result->num_rows > 0) {
											 while($row = $result->fetch_assoc()) {
												 echo "<a class=\"carousel-item\" href=\"#one!\"><span class=\"podpis\">" . $row["position"]. "<br>". $row["position2"]."<br> ".  $row["position3"]. "</span><img src=" . $row["photo_path"]. " alt=\"Brak zdjęcia :'(\"><span class=\"podpis\">". $row["degree"] . " ". $row["name"]. "</span></a>";
											 }
										} else {
											 echo "<div class=\"error center-align\">Halo tu baza, jestem pusta! <br>ಥ_ಥ <br> ಥ_ಥ</div>";
										}
										$conn->close();
								?>



							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2009/2010</h3>
							<div class="carousel">
								<?php
										// Łączenie
										$conn = new mysqli($servername, $username, $password, $dbname);
										// Sprawdzanie
										if ($conn->connect_error) {
											 die("<h1>Jeśli widzisz ten komunikat to wołaj CZARKA, bo KTOŚ tu coś naklikał: (•̀o•́)ง(•̀o•́)ง(•̀o•́)ง</h1><br><h2>" . $conn->connect_error)."</h2> ";
										}

										/* Zmiana kodownaia na UTF-8 */
										if (!$conn->set_charset("utf8")) {
												printf("Co to je ten utf8? ヽ(ಠ_ಠ)ノ: %s\n", $conn->error);
												exit();
										}

										// Wypisuje nauczycieli z danego rocznika
										$carousel = "SELECT * FROM positions natural join emploees where rok='2009/2010'";


										$result = $conn->query($carousel);

										if ($result->num_rows > 0) {
											 while($row = $result->fetch_assoc()) {
												 echo "<a class=\"carousel-item\" href=\"#one!\"><span class=\"podpis\">" . $row["position"]. "<br>". $row["position2"]."<br> ".  $row["position3"]. "</span><img src=" . $row["photo_path"]. " alt=\"Brak zdjęcia :'(\"><span class=\"podpis\">". $row["degree"] . " ". $row["name"]. "</span></a>";
											 }
										} else {
											 echo "<div class=\"error center-align\">Halo tu baza, jestem pusta! <br>ಥ_ಥ <br> ಥ_ಥ</div>";
										}
										$conn->close();
								?>



							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2008/2009</h3>
							<div class="carousel">
								<?php
										// Łączenie
										$conn = new mysqli($servername, $username, $password, $dbname);
										// Sprawdzanie
										if ($conn->connect_error) {
											 die("<h1>Jeśli widzisz ten komunikat to wołaj CZARKA, bo KTOŚ tu coś naklikał: (•̀o•́)ง(•̀o•́)ง(•̀o•́)ง</h1><br><h2>" . $conn->connect_error)."</h2> ";
										}

										/* Zmiana kodownaia na UTF-8 */
										if (!$conn->set_charset("utf8")) {
												printf("Co to je ten utf8? ヽ(ಠ_ಠ)ノ: %s\n", $conn->error);
												exit();
										}

										// Wypisuje nauczycieli z danego rocznika
										$carousel = "SELECT * FROM positions natural join emploees where rok='2008/2009'";


										$result = $conn->query($carousel);

										if ($result->num_rows > 0) {
											 while($row = $result->fetch_assoc()) {
												 echo "<a class=\"carousel-item\" href=\"#one!\"><span class=\"podpis\">" . $row["position"]. "<br>". $row["position2"]."<br> ".  $row["position3"]. "</span><img src=" . $row["photo_path"]. " alt=\"Brak zdjęcia :'(\"><span class=\"podpis\">". $row["degree"] . " ". $row["name"]. "</span></a>";
											 }
										} else {
											 echo "<div class=\"error center-align\">Halo tu baza, jestem pusta! <br>ಥ_ಥ <br> ಥ_ಥ</div>";
										}
										$conn->close();
								?>



							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2007/2008</h3>
							<div class="carousel">
								<?php
										// Łączenie
										$conn = new mysqli($servername, $username, $password, $dbname);
										// Sprawdzanie
										if ($conn->connect_error) {
											 die("<h1>Jeśli widzisz ten komunikat to wołaj CZARKA, bo KTOŚ tu coś naklikał: (•̀o•́)ง(•̀o•́)ง(•̀o•́)ง</h1><br><h2>" . $conn->connect_error)."</h2> ";
										}

										/* Zmiana kodownaia na UTF-8 */
										if (!$conn->set_charset("utf8")) {
												printf("Co to je ten utf8? ヽ(ಠ_ಠ)ノ: %s\n", $conn->error);
												exit();
										}

										// Wypisuje nauczycieli z danego rocznika
										$carousel = "SELECT * FROM positions natural join emploees where rok='2007/2008'";


										$result = $conn->query($carousel);

										if ($result->num_rows > 0) {
											 while($row = $result->fetch_assoc()) {
												 echo "<a class=\"carousel-item\" href=\"#one!\"><span class=\"podpis\">" . $row["position"]. "<br>". $row["position2"]."<br> ".  $row["position3"]. "</span><img src=" . $row["photo_path"]. " alt=\"Brak zdjęcia :'(\"><span class=\"podpis\">". $row["degree"] . " ". $row["name"]. "</span></a>";
											 }
										} else {
											 echo "<div class=\"error center-align\">Halo tu baza, jestem pusta! <br>ಥ_ಥ <br> ಥ_ಥ</div>";
										}
										$conn->close();
								?>



							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2006/2007</h3>
							<div class="carousel">
								<?php
										// Łączenie
										$conn = new mysqli($servername, $username, $password, $dbname);
										// Sprawdzanie
										if ($conn->connect_error) {
											 die("<h1>Jeśli widzisz ten komunikat to wołaj CZARKA, bo KTOŚ tu coś naklikał: (•̀o•́)ง(•̀o•́)ง(•̀o•́)ง</h1><br><h2>" . $conn->connect_error)."</h2> ";
										}

										/* Zmiana kodownaia na UTF-8 */
										if (!$conn->set_charset("utf8")) {
												printf("Co to je ten utf8? ヽ(ಠ_ಠ)ノ: %s\n", $conn->error);
												exit();
										}

										// Wypisuje nauczycieli z danego rocznika
										$carousel = "SELECT * FROM positions natural join emploees where rok='2006/2007'";


										$result = $conn->query($carousel);

										if ($result->num_rows > 0) {
											 while($row = $result->fetch_assoc()) {
												 echo "<a class=\"carousel-item\" href=\"#one!\"><span class=\"podpis\">" . $row["position"]. "<br>". $row["position2"]."<br> ".  $row["position3"]. "</span><img src=" . $row["photo_path"]. " alt=\"Brak zdjęcia :'(\"><span class=\"podpis\">". $row["degree"] . " ". $row["name"]. "</span></a>";
											 }
										} else {
											 echo "<div class=\"error center-align\">Halo tu baza, jestem pusta! <br>ಥ_ಥ <br> ಥ_ಥ</div>";
										}
										$conn->close();
								?>



							</div>
			</div>
		</div>
  </div>
	<div class="row">
		<div class="col s12">
			<h3 class="center-align">Nauczyciele i pracownicy
					Zespołu Szkół Zawodowych w Sokółce
					w roku szkolnym 2005/2006</h3>
						<div class="carousel">
							<?php
									// Łączenie
									$conn = new mysqli($servername, $username, $password, $dbname);
									// Sprawdzanie
									if ($conn->connect_error) {
										 die("<h1>Jeśli widzisz ten komunikat to wołaj CZARKA, bo KTOŚ tu coś naklikał: (•̀o•́)ง(•̀o•́)ง(•̀o•́)ง</h1><br><h2>" . $conn->connect_error)."</h2> ";
									}

									/* Zmiana kodownaia na UTF-8 */
									if (!$conn->set_charset("utf8")) {
											printf("Co to je ten utf8? ヽ(ಠ_ಠ)ノ: %s\n", $conn->error);
											exit();
									}

									// Wypisuje nauczycieli z danego rocznika
									$carousel = "SELECT * FROM positions natural join emploees where rok='2005/2006'";


									$result = $conn->query($carousel);

									if ($result->num_rows > 0) {
										 while($row = $result->fetch_assoc()) {
											 echo "<a class=\"carousel-item\" href=\"#one!\"><span class=\"podpis\">" . $row["position"]. "<br>". $row["position2"]."<br> ".  $row["position3"]. "</span><img src=" . $row["photo_path"]. " alt=\"Brak zdjęcia :'(\"><span class=\"podpis\">". $row["degree"] . " ". $row["name"]. "</span></a>";
										 }
									} else {
										 echo "<div class=\"error center-align\">Halo tu baza, jestem pusta! <br>ಥ_ಥ <br> ಥ_ಥ</div>";
									}
									$conn->close();
							?>



						</div>
		</div>
	</div>
</div>
  <?php
    include_once('includes/footer.php');
  ?>
</body>
</html>
