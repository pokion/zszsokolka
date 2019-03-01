<!DOCTYPE html>
<html lang="PL">
<head>
	<title>Rekrutacja</title>

	<?php
		include_once('includes/header.php');
		$inc = 'pracownicy';
	?>

</head>
<body>

  	<?php
  		include_once('includes/nav.php');
  	?>
		<?php
		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "datapost";

		// Create connection
		$conn = new mysqli($servername, $username, $password, $dbname);
		// Check connection
		if ($conn->connect_error) {
			 die("Connection failed: " . $conn->connect_error);
		}
		/* change character set to utf8 */
		if (!$conn->set_charset("utf8")) {
				printf("Error loading character set utf8: %s\n", $conn->error);
				exit();
		} else {
				printf("");
		}
		$buttons = "SELECT StanowiskoID, nazwa FROM `stanowiska`";
		$result = $conn->query($buttons);

		if ($result->num_rows > 0) {
			 // output data of each row
			 while($row = $result->fetch_assoc()) {
				 echo "<button class=\"waves-effect waves-light btn\" click=\"to\" value=". $row["StanowiskoID"]. ">" . $row["nazwa"] . "</button>";
			 }
		} else {
			 echo "0 results";
		}
		$result->close();
		$conn->close();
		?>
  <div class="container">
    <div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2018/2019</h3>
              <div class="carousel">
				<?php
						$servername = "localhost";
						$username = "root";
						$password = "";
						$dbname = "datapost";

						// Create connection
						$conn = new mysqli($servername, $username, $password, $dbname);
						// Check connection
						if ($conn->connect_error) {
							 die("Connection failed: " . $conn->connect_error);
						}
						printf("Initial character set: %s\n", $conn->character_set_name());

						/* change character set to utf8 */
						if (!$conn->set_charset("utf8")) {
						    printf("Error loading character set utf8: %s\n", $conn->error);
						    exit();
						} else {
						    printf("Current character set: %s\n", $conn->character_set_name());
						}

							// SELECT title,GROUP_CONCAT(mood_name SEPARATOR ' ') AS moods
							// FROM films
							// JOIN films_moods ON films.id=films_moods.film_id
							// JOIN moods ON films_moods.mood_id=moods.id
							// //
							// SELECT
							// *
							// FROM
							//  stanowiska_pracownikow2
							//  INNER JOIN
							//  stanowiska_pracownikow2 ON stanowiska_pracownikow2.PracownikID = pracownicy.PracownikID
							//  INNER JOIN
							//  stanowiska_pracownikow2 ON stanowiska_pracownikow2.stanowiskoID = stanowiska.StanowiskoID;
							// SELECT
							//    *
							// FROM
							//     stanowiska_pracownikow2
							//         INNER JOIN
							//     pracownicy ON stanowiska_pracownikow2.PracownikID = pracownicy.PracownikID
							//             INNER JOIN
							//     stanowiska ON stanowiska_pracownikow2.StanowiskoID = stanowiska.StanowiskoID;
						$carousel = "SELECT wyksztalcenie, imie, nazwisko, nazwa, zdjecie, rok
						 FROM stanowiska_pracownikow
					   INNER JOIN pracownicy ON stanowiska_pracownikow.PracownikID = pracownicy.PracownikID
					   INNER JOIN stanowiska ON stanowiska_pracownikow.StanowiskoID = stanowiska.StanowiskoID;";
						$result = $conn->query($carousel);

						$whatRepeats = "SELECT * from stanowiska_pracownikow
    				group by PracownikID having count(*) > 1";
    				$tablePracownicy = [];

						if ($result->num_rows > 0) {
							 // output data of each row
							 while($row = $result->fetch_assoc()) {
								 // if ($nazwisko > 1){
									//   echo "<a class=\"carousel-item\" href=\"#one!\"><span class=\"podpis\">" . $row["nazwa"]. $row["nazwa"] . "<br> Przedmioty zawodowe</span><img src=../img/pracownicy/" . substr($row["rok"], 0, 4)."/". $row["zdjecie"]. " ". "alt=\"brak zdjęcia :(\"><span class=\"podpis\">" . $row["wyksztalcenie"]. " ". $row["imie"]. " ". $row["nazwisko"]."</span></a>";
									// } else
								 echo "<a class=\"carousel-item\" href=\"#one!\"><span class=\"podpis\">" . $row["nazwa"] . "<br></span><img src=../img/pracownicy/" . substr($row["rok"], 0, 4)."/". $row["zdjecie"]. " ". "alt=\"brak zdjęcia :(\"><span class=\"podpis\">" . $row["wyksztalcenie"]. " ". $row["imie"]. " ". $row["nazwisko"]."</span></a>";
							 }
						} else {
							 echo "0 results";
						}
						$result->close();
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
								 <a class="carousel-item" href="#one!"><span class="podpis">Dyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/2018/gz.jpg"><span class="podpis">Grzegorz Zalewski</span></a>
								 <a class="carousel-item" href="#two!"><span class="podpis">Vicedyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/lc.jpg"><span class="podpis">mgr Czarnowicz Lech</span></a>

								 <a class="carousel-item"  href="#three!"><span class="podpis">Kierownik pracowni</span><img src="../img/pracownicy/mwo.jpg"><span class="podpis">mgr inż. Mirosław Wojciech Osial</span></a>

								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/imk.jpg"><span class="podpis">mgr Iwona Mackiewicz-Kowalczuk</span></a>
								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/at.jpg"><span class="podpis">mgr Anna Tolko</span></a>

								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/kkc.jpg"><span class="podpis">mgr Klaudia Kmon-Ciuruk</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/rm.jpg"><span class="podpis">mgr Renata Maliszewska</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/ta.jpg"><span class="podpis">mgr Aneta Tymińska</span></a>

								 <a class="carousel-item"><span class="podpis">Historia, <br> WoS</span><img src="../img/pracownicy/slp.jpg"><span class="podpis">mgr Sylwester Leon Pakuła</span></a>
								 <a class="carousel-item"><span class="podpis">Matematyka</span><img src="../img/pracownicy/kg.jpg"><span class="podpis">mgr Krystyna Grygiewicz</span></a>
								 <a class="carousel-item"><span class="podpis">Fizyka</span><img src="../img/pracownicy/pd.jpg"><span class="podpis">mgr inż. Piotr Dziakowski</span></a>
								 <a class="carousel-item"><span class="podpis">Chemia <br> Biologia <br> Przedmioty zawodowe</span><img src="../img/pracownicy/ze.jpg"><span class="podpis">mgr Elwira Zabłocka</span></a>
								 <a class="carousel-item"><span class="podpis">Geografia <br> Podstawy przediębiorczości</span><img src="../img/pracownicy/ms.jpg"><span class="podpis">mgr Maria Sobolewska</span></a>

								 <a class="carousel-item"><span class="podpis">Edukacja dla bezpieczeństwa</span><img src="../img/pracownicy/az.jpg"><span class="podpis">mgr Andrzej Zajczyk</span></a>
								 <a class="carousel-item"><span class="podpis">Wychowanie fizyczne <br> EDB</span><img src="../img/pracownicy/jl.jpg"><span class="podpis">mgr Jolanta Lech</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/kr.jpg"><span class="podpis">Karolina Roszkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/js.jpg"><span class="podpis">mgr inż. Jerzy Szymaniuk</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/ej.jpg"><span class="podpis">mgr Edyta Jelska</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/ak.jpg"><span class="podpis">mgr Andrzej Kułak</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/jz.jpg"><span class="podpis">mgr Józef Żak</span></a>

								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/mCiostekD.jpg"><span class="podpis">Dariusz Ciostek</span></a>
								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/bj.jpg"><span class="podpis">mgr Bernard Jasielczuk</span></a>

								 <a class="carousel-item"><span class="podpis">Katecheza</span><img src="../img/pracownicy/tl.jpg"><span class="podpis">ks. mgr Tomasz Łapiak</span></a>
								 <a class="carousel-item"><span class="podpis">Biblioteka</span><img src="../img/pracownicy/jss.jpg"><span class="podpis">mgr Jolanta Stanisława Siemieniako</span></a>
								 <a class="carousel-item"><span class="podpis">Pedagog szkolny</span><img src="../img/pracownicy/ig.jpg"><span class="podpis">mgr Izabela Garkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Sekretariat</span><img src="../img/pracownicy/is.jpg"><span class="podpis">mgr Iwona Sarosiek</span></a>
								 <a class="carousel-item"><span class="podpis">Sekretariat</span><img src="../img/pracownicy/ez.jpg"><span class="podpis">mgr Elwira Zalewska</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/lb.jpg"><span class="podpis">Lucyna Bakun</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/bz.jpg"><span class="podpis"> Barbara Żamojtuk</span></a>
								 <a class="carousel-item"><span class="podpis">Woźna</span><img src="../img/pracownicy/ek.jpg"><span class="podpis">Elżbieta Komła</span></a>



							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2016/2017</h3>
              <div class="carousel">
                 <a class="carousel-item" href="#one!"><span class="podpis">Dyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/2016/nauczyciel6.jpg"><span class="podpis">Grzegorz Zalewski</span></a>
                 <a class="carousel-item" href="#two!"><span class="podpis">Vicedyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/2016/nauczyciel14.jpg"><span class="podpis">mgr Czarnowicz Lech</span></a>

                 <a class="carousel-item"  href="#three!"><span class="podpis">Kierownik pracowni</span><img src="../img/pracownicy/2016/mMirek.jpg"><span class="podpis">mgr inż. Mirosław Wojciech Osial</span></a>

                 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/2016/nauczyciel3.jpg"><span class="podpis">mgr Iwona Mackiewicz-Kowalczuk</span></a>
								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/2016/nauczyciel1.jpg"><span class="podpis">mgr Anna Tolko</span></a>

                 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/kkc.jpg"><span class="podpis">mgr Klaudia Kmon-Ciuruk</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/2016/RenatkaM.jpg"><span class="podpis">mgr Renata Maliszewska</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/2016/nauczyciel4.jpg"><span class="podpis">mgr Aneta Tymińska</span></a>

								 <a class="carousel-item"><span class="podpis">Historia, <br> WoS</span><img src="../img/pracownicy/2016/ja.jpg"><span class="podpis">mgr Sylwester Leon Pakuła</span></a>
								 <a class="carousel-item" href="#matma!"><span class="podpis">Matematyka</span><img src="../img/pracownicy/2016/nauczyciel5.jpg"><span class="podpis">mgr Krystyna Grygiewicz</span></a>
								 <a class="carousel-item"><span class="podpis">Fizyka</span><img src="../img/pracownicy/2016/nauczyciel12.jpg"><span class="podpis">mgr inż. Piotr Dziakowski</span></a>
								 <a class="carousel-item"><span class="podpis">Chemia <br> Biologia <br> Przedmioty zawodowe</span><img src="../img/pracownicy/2016/nauczyciel11.jpg"><span class="podpis">mgr Elwira Zabłocka</span></a>
								 <a class="carousel-item"><span class="podpis">Geografia <br> Podstawy przediębiorczości</span><img src="../img/pracownicy/2016/mMariaS.jpg"><span class="podpis">mgr Maria Sobolewska</span></a>

								 <a class="carousel-item"><span class="podpis">Wychowanie fizyczne <br> EDB</span><img src="../img/pracownicy/2016/nauczyciel9.jpg"><span class="podpis">mgr Tomasz Potapczyk</span></a>
								 <a class="carousel-item"><span class="podpis">Wychowanie fizyczne <br> EDB</span><img src="../img/pracownicy/2016/lech.jpg"><span class="podpis">mgr Jolanta Lech</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/2016/mMarek_M14.jpg"><span class="podpis">mgr inż. Marek Mozyrski</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/2016/nauczyciel8.jpg"><span class="podpis">mgr Edyta Jelska</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/2016/JurekSz.jpg"><span class="podpis">mgr inż. Jerzy Szymaniuk</span></a>

								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/2016/mAZajczyk.jpg"><span class="podpis">mgr Andrzej Zajczykk</span></a>
								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/2016/BenekJ.jpg"><span class="podpis">mgr Bernard Jasielczuk</span></a>

								 <a class="carousel-item"><span class="podpis">Katecheza</span><img src="../img/pracownicy/2016/Jaroszuk.jpg"><span class="podpis">ks. mgr Justyn Jaroszuk</span></a>
								 <a class="carousel-item"><span class="podpis">Katecheza</span><img src="../img/pracownicy/2016/zdrodowski.jpg"><span class="podpis">ks. mgr Filip Zdrodowski</span></a>
								 <a class="carousel-item"><span class="podpis">Biblioteka</span><img src="../img/pracownicy/2016/nauczyciel2.jpg"><span class="podpis">mgr Jolanta Stanisława Siemieniako</span></a>
								 <a class="carousel-item"><span class="podpis">Pedagog szkolny</span><img src="../img/pracownicy/2016/nauczyciel13.jpg"><span class="podpis">mgr Izabela Garkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Sekretariat</span><img src="../img/pracownicy/2016/IwonaS.jpg"><span class="podpis">mgr Iwona Sarosiek</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/2016/Lucyna.jpg"><span class="podpis">Lucyna Bakun</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/2016/ElwiraZalewska.jpg"><span class="podpis">mgr Elwira Zalewska</span></a>
								 <a class="carousel-item"><span class="podpis">Woźna</span><img src="../img/pracownicy/ek.jpg"><span class="podpis">Elżbieta Komła</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/2016/Basia.jpg"><span class="podpis"> Barbara Żamojtuk</span></a>


            	</div>
      </div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2014/2015</h3>
              <div class="carousel">
                 <a class="carousel-item" href="#one!"><span class="podpis">Dyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/gz.jpg"><span class="podpis">Grzegorz Zalewski</span></a>
                 <a class="carousel-item" href="#two!"><span class="podpis">Vicedyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/lc.jpg"><span class="podpis">mgr Czarnowicz Lech</span></a>

                 <a class="carousel-item"  href="#three!"><span class="podpis">Kierownik pracowni</span><img src="../img/pracownicy/mwo.jpg"><span class="podpis">mgr inż. Mirosław Wojciech Osial</span></a>

                 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/imk.jpg"><span class="podpis">mgr Iwona Mackiewicz-Kowalczuk</span></a>
								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/at.jpg"><span class="podpis">mgr Anna Tolko</span></a>

                 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/kkc.jpg"><span class="podpis">mgr Klaudia Kmon-Ciuruk</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/rm.jpg"><span class="podpis">mgr Renata Maliszewska</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/ta.jpg"><span class="podpis">mgr Aneta Tymińska</span></a>

								 <a class="carousel-item"><span class="podpis">Historia, <br> WoS</span><img src="../img/pracownicy/slp.jpg"><span class="podpis">mgr Sylwester Leon Pakuła</span></a>
								 <a class="carousel-item"><span class="podpis">Matematyka</span><img src="../img/pracownicy/kg.jpg"><span class="podpis">mgr Krystyna Grygiewicz</span></a>
								 <a class="carousel-item"><span class="podpis">Fizyka</span><img src="../img/pracownicy/pd.jpg"><span class="podpis">mgr inż. Piotr Dziakowski</span></a>
								 <a class="carousel-item"><span class="podpis">Chemia <br> Biologia <br> Przedmioty zawodowe</span><img src="../img/pracownicy/ze.jpg"><span class="podpis">mgr Elwira Zabłocka</span></a>
								 <a class="carousel-item"><span class="podpis">Geografia <br> Podstawy przediębiorczości</span><img src="../img/pracownicy/ms.jpg"><span class="podpis">mgr Maria Sobolewska</span></a>

								 <a class="carousel-item"><span class="podpis">Wychowanie fizyczne <br> EDB</span><img src="../img/pracownicy/jl.jpg"><span class="podpis">mgr Jolanta Lech</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/mm.jpg"><span class="podpis">mgr inż. Marek Mozyrski</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/kr.jpg"><span class="podpis">Karolina Roszkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/js.jpg"><span class="podpis">mgr inż. Jerzy Szymaniuk</span></a>

								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/mCiostekD.jpg"><span class="podpis">Dariusz Ciostek</span></a>
								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/bj.jpg"><span class="podpis">mgr Bernard Jasielczuk</span></a>

								 <a class="carousel-item"><span class="podpis">Katecheza</span><img src="../img/pracownicy/tl.jpg"><span class="podpis">ks. mgr Tomasz Łapiak</span></a>
								 <a class="carousel-item"><span class="podpis">Biblioteka</span><img src="../img/pracownicy/jss.jpg"><span class="podpis">mgr Jolanta Stanisława Siemieniako</span></a>
								 <a class="carousel-item"><span class="podpis">Pedagog szkolny</span><img src="../img/pracownicy/ig.jpg"><span class="podpis">mgr Izabela Garkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Sekretariat</span><img src="../img/pracownicy/is.jpg"><span class="podpis">mgr Iwona Sarosiek</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/lb.jpg"><span class="podpis">Lucyna Bakun</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/ez.jpg"><span class="podpis">mgr Elwira Zalewska</span></a>
								 <a class="carousel-item"><span class="podpis">Woźna</span><img src="../img/pracownicy/ek.jpg"><span class="podpis">Elżbieta Komła</span></a>



            	</div>
      </div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2013/2014</h3>
							<div class="carousel">
								 <a class="carousel-item" href="#one!"><span class="podpis">Dyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/gz.jpg"><span class="podpis">Grzegorz Zalewski</span></a>
								 <a class="carousel-item" href="#two!"><span class="podpis">Vicedyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/lc.jpg"><span class="podpis">mgr Czarnowicz Lech</span></a>

								 <a class="carousel-item"  href="#three!"><span class="podpis">Kierownik pracowni</span><img src="../img/pracownicy/mwo.jpg"><span class="podpis">mgr inż. Mirosław Wojciech Osial</span></a>

								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/imk.jpg"><span class="podpis">mgr Iwona Mackiewicz-Kowalczuk</span></a>
								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/at.jpg"><span class="podpis">mgr Anna Tolko</span></a>

								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/kkc.jpg"><span class="podpis">mgr Klaudia Kmon-Ciuruk</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/rm.jpg"><span class="podpis">mgr Renata Maliszewska</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/ta.jpg"><span class="podpis">mgr Aneta Tymińska</span></a>

								 <a class="carousel-item"><span class="podpis">Historia, <br> WoS</span><img src="../img/pracownicy/slp.jpg"><span class="podpis">mgr Sylwester Leon Pakuła</span></a>
								 <a class="carousel-item"><span class="podpis">Matematyka</span><img src="../img/pracownicy/kg.jpg"><span class="podpis">mgr Krystyna Grygiewicz</span></a>
								 <a class="carousel-item"><span class="podpis">Fizyka</span><img src="../img/pracownicy/pd.jpg"><span class="podpis">mgr inż. Piotr Dziakowski</span></a>
								 <a class="carousel-item"><span class="podpis">Chemia <br> Biologia <br> Przedmioty zawodowe</span><img src="../img/pracownicy/ze.jpg"><span class="podpis">mgr Elwira Zabłocka</span></a>
								 <a class="carousel-item"><span class="podpis">Geografia <br> Podstawy przediębiorczości</span><img src="../img/pracownicy/ms.jpg"><span class="podpis">mgr Maria Sobolewska</span></a>

								 <a class="carousel-item"><span class="podpis">Wychowanie fizyczne <br> EDB</span><img src="../img/pracownicy/jl.jpg"><span class="podpis">mgr Jolanta Lech</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/mm.jpg"><span class="podpis">mgr inż. Marek Mozyrski</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/kr.jpg"><span class="podpis">Karolina Roszkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/js.jpg"><span class="podpis">mgr inż. Jerzy Szymaniuk</span></a>

								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/mCiostekD.jpg"><span class="podpis">Dariusz Ciostek</span></a>
								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/bj.jpg"><span class="podpis">mgr Bernard Jasielczuk</span></a>

								 <a class="carousel-item"><span class="podpis">Katecheza</span><img src="../img/pracownicy/tl.jpg"><span class="podpis">ks. mgr Tomasz Łapiak</span></a>
								 <a class="carousel-item"><span class="podpis">Biblioteka</span><img src="../img/pracownicy/jss.jpg"><span class="podpis">mgr Jolanta Stanisława Siemieniako</span></a>
								 <a class="carousel-item"><span class="podpis">Pedagog szkolny</span><img src="../img/pracownicy/ig.jpg"><span class="podpis">mgr Izabela Garkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Sekretariat</span><img src="../img/pracownicy/is.jpg"><span class="podpis">mgr Iwona Sarosiek</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/lb.jpg"><span class="podpis">Lucyna Bakun</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/ez.jpg"><span class="podpis">mgr Elwira Zalewska</span></a>
								 <a class="carousel-item"><span class="podpis">Woźna</span><img src="../img/pracownicy/ek.jpg"><span class="podpis">Elżbieta Komła</span></a>



							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2012/2013</h3>
							<div class="carousel">
								 <a class="carousel-item" href="#one!"><span class="podpis">Dyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/gz.jpg"><span class="podpis">Grzegorz Zalewski</span></a>
								 <a class="carousel-item" href="#two!"><span class="podpis">Vicedyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/lc.jpg"><span class="podpis">mgr Czarnowicz Lech</span></a>

								 <a class="carousel-item"  href="#three!"><span class="podpis">Kierownik pracowni</span><img src="../img/pracownicy/mwo.jpg"><span class="podpis">mgr inż. Mirosław Wojciech Osial</span></a>

								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/imk.jpg"><span class="podpis">mgr Iwona Mackiewicz-Kowalczuk</span></a>
								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/at.jpg"><span class="podpis">mgr Anna Tolko</span></a>

								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/kkc.jpg"><span class="podpis">mgr Klaudia Kmon-Ciuruk</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/rm.jpg"><span class="podpis">mgr Renata Maliszewska</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/ta.jpg"><span class="podpis">mgr Aneta Tymińska</span></a>

								 <a class="carousel-item"><span class="podpis">Historia, <br> WoS</span><img src="../img/pracownicy/slp.jpg"><span class="podpis">mgr Sylwester Leon Pakuła</span></a>
								 <a class="carousel-item"><span class="podpis">Matematyka</span><img src="../img/pracownicy/kg.jpg"><span class="podpis">mgr Krystyna Grygiewicz</span></a>
								 <a class="carousel-item"><span class="podpis">Fizyka</span><img src="../img/pracownicy/pd.jpg"><span class="podpis">mgr inż. Piotr Dziakowski</span></a>
								 <a class="carousel-item"><span class="podpis">Chemia <br> Biologia <br> Przedmioty zawodowe</span><img src="../img/pracownicy/ze.jpg"><span class="podpis">mgr Elwira Zabłocka</span></a>
								 <a class="carousel-item"><span class="podpis">Geografia <br> Podstawy przediębiorczości</span><img src="../img/pracownicy/ms.jpg"><span class="podpis">mgr Maria Sobolewska</span></a>

								 <a class="carousel-item"><span class="podpis">Wychowanie fizyczne <br> EDB</span><img src="../img/pracownicy/jl.jpg"><span class="podpis">mgr Jolanta Lech</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/mm.jpg"><span class="podpis">mgr inż. Marek Mozyrski</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/kr.jpg"><span class="podpis">Karolina Roszkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/js.jpg"><span class="podpis">mgr inż. Jerzy Szymaniuk</span></a>

								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/mCiostekD.jpg"><span class="podpis">Dariusz Ciostek</span></a>
								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/bj.jpg"><span class="podpis">mgr Bernard Jasielczuk</span></a>

								 <a class="carousel-item"><span class="podpis">Katecheza</span><img src="../img/pracownicy/tl.jpg"><span class="podpis">ks. mgr Tomasz Łapiak</span></a>
								 <a class="carousel-item"><span class="podpis">Biblioteka</span><img src="../img/pracownicy/jss.jpg"><span class="podpis">mgr Jolanta Stanisława Siemieniako</span></a>
								 <a class="carousel-item"><span class="podpis">Pedagog szkolny</span><img src="../img/pracownicy/ig.jpg"><span class="podpis">mgr Izabela Garkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Sekretariat</span><img src="../img/pracownicy/is.jpg"><span class="podpis">mgr Iwona Sarosiek</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/lb.jpg"><span class="podpis">Lucyna Bakun</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/ez.jpg"><span class="podpis">mgr Elwira Zalewska</span></a>
								 <a class="carousel-item"><span class="podpis">Woźna</span><img src="../img/pracownicy/ek.jpg"><span class="podpis">Elżbieta Komła</span></a>



							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2011/2012</h3>
							<div class="carousel">
								 <a class="carousel-item" href="#one!"><span class="podpis">Dyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/gz.jpg"><span class="podpis">Grzegorz Zalewski</span></a>
								 <a class="carousel-item" href="#two!"><span class="podpis">Vicedyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/lc.jpg"><span class="podpis">mgr Czarnowicz Lech</span></a>

								 <a class="carousel-item"  href="#three!"><span class="podpis">Kierownik pracowni</span><img src="../img/pracownicy/mwo.jpg"><span class="podpis">mgr inż. Mirosław Wojciech Osial</span></a>

								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/imk.jpg"><span class="podpis">mgr Iwona Mackiewicz-Kowalczuk</span></a>
								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/at.jpg"><span class="podpis">mgr Anna Tolko</span></a>

								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/kkc.jpg"><span class="podpis">mgr Klaudia Kmon-Ciuruk</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/rm.jpg"><span class="podpis">mgr Renata Maliszewska</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/ta.jpg"><span class="podpis">mgr Aneta Tymińska</span></a>

								 <a class="carousel-item"><span class="podpis">Historia, <br> WoS</span><img src="../img/pracownicy/slp.jpg"><span class="podpis">mgr Sylwester Leon Pakuła</span></a>
								 <a class="carousel-item"><span class="podpis">Matematyka</span><img src="../img/pracownicy/kg.jpg"><span class="podpis">mgr Krystyna Grygiewicz</span></a>
								 <a class="carousel-item"><span class="podpis">Fizyka</span><img src="../img/pracownicy/pd.jpg"><span class="podpis">mgr inż. Piotr Dziakowski</span></a>
								 <a class="carousel-item"><span class="podpis">Chemia <br> Biologia <br> Przedmioty zawodowe</span><img src="../img/pracownicy/ze.jpg"><span class="podpis">mgr Elwira Zabłocka</span></a>
								 <a class="carousel-item"><span class="podpis">Geografia <br> Podstawy przediębiorczości</span><img src="../img/pracownicy/ms.jpg"><span class="podpis">mgr Maria Sobolewska</span></a>

								 <a class="carousel-item"><span class="podpis">Wychowanie fizyczne <br> EDB</span><img src="../img/pracownicy/jl.jpg"><span class="podpis">mgr Jolanta Lech</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/mm.jpg"><span class="podpis">mgr inż. Marek Mozyrski</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/kr.jpg"><span class="podpis">Karolina Roszkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/js.jpg"><span class="podpis">mgr inż. Jerzy Szymaniuk</span></a>

								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/mCiostekD.jpg"><span class="podpis">Dariusz Ciostek</span></a>
								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/bj.jpg"><span class="podpis">mgr Bernard Jasielczuk</span></a>

								 <a class="carousel-item"><span class="podpis">Katecheza</span><img src="../img/pracownicy/tl.jpg"><span class="podpis">ks. mgr Tomasz Łapiak</span></a>
								 <a class="carousel-item"><span class="podpis">Biblioteka</span><img src="../img/pracownicy/jss.jpg"><span class="podpis">mgr Jolanta Stanisława Siemieniako</span></a>
								 <a class="carousel-item"><span class="podpis">Pedagog szkolny</span><img src="../img/pracownicy/ig.jpg"><span class="podpis">mgr Izabela Garkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Sekretariat</span><img src="../img/pracownicy/is.jpg"><span class="podpis">mgr Iwona Sarosiek</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/lb.jpg"><span class="podpis">Lucyna Bakun</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/ez.jpg"><span class="podpis">mgr Elwira Zalewska</span></a>
								 <a class="carousel-item"><span class="podpis">Woźna</span><img src="../img/pracownicy/ek.jpg"><span class="podpis">Elżbieta Komła</span></a>



							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2010/2011</h3>
							<div class="carousel">
								 <a class="carousel-item" href="#one!"><span class="podpis">Dyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/gz.jpg"><span class="podpis">Grzegorz Zalewski</span></a>
								 <a class="carousel-item" href="#two!"><span class="podpis">Vicedyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/lc.jpg"><span class="podpis">mgr Czarnowicz Lech</span></a>

								 <a class="carousel-item"  href="#three!"><span class="podpis">Kierownik pracowni</span><img src="../img/pracownicy/mwo.jpg"><span class="podpis">mgr inż. Mirosław Wojciech Osial</span></a>

								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/imk.jpg"><span class="podpis">mgr Iwona Mackiewicz-Kowalczuk</span></a>
								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/at.jpg"><span class="podpis">mgr Anna Tolko</span></a>

								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/kkc.jpg"><span class="podpis">mgr Klaudia Kmon-Ciuruk</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/rm.jpg"><span class="podpis">mgr Renata Maliszewska</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/ta.jpg"><span class="podpis">mgr Aneta Tymińska</span></a>

								 <a class="carousel-item"><span class="podpis">Historia, <br> WoS</span><img src="../img/pracownicy/slp.jpg"><span class="podpis">mgr Sylwester Leon Pakuła</span></a>
								 <a class="carousel-item"><span class="podpis">Matematyka</span><img src="../img/pracownicy/kg.jpg"><span class="podpis">mgr Krystyna Grygiewicz</span></a>
								 <a class="carousel-item"><span class="podpis">Fizyka</span><img src="../img/pracownicy/pd.jpg"><span class="podpis">mgr inż. Piotr Dziakowski</span></a>
								 <a class="carousel-item"><span class="podpis">Chemia <br> Biologia <br> Przedmioty zawodowe</span><img src="../img/pracownicy/ze.jpg"><span class="podpis">mgr Elwira Zabłocka</span></a>
								 <a class="carousel-item"><span class="podpis">Geografia <br> Podstawy przediębiorczości</span><img src="../img/pracownicy/ms.jpg"><span class="podpis">mgr Maria Sobolewska</span></a>

								 <a class="carousel-item"><span class="podpis">Wychowanie fizyczne <br> EDB</span><img src="../img/pracownicy/jl.jpg"><span class="podpis">mgr Jolanta Lech</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/mm.jpg"><span class="podpis">mgr inż. Marek Mozyrski</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/kr.jpg"><span class="podpis">Karolina Roszkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/js.jpg"><span class="podpis">mgr inż. Jerzy Szymaniuk</span></a>

								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/mCiostekD.jpg"><span class="podpis">Dariusz Ciostek</span></a>
								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/bj.jpg"><span class="podpis">mgr Bernard Jasielczuk</span></a>

								 <a class="carousel-item"><span class="podpis">Katecheza</span><img src="../img/pracownicy/tl.jpg"><span class="podpis">ks. mgr Tomasz Łapiak</span></a>
								 <a class="carousel-item"><span class="podpis">Biblioteka</span><img src="../img/pracownicy/jss.jpg"><span class="podpis">mgr Jolanta Stanisława Siemieniako</span></a>
								 <a class="carousel-item"><span class="podpis">Pedagog szkolny</span><img src="../img/pracownicy/ig.jpg"><span class="podpis">mgr Izabela Garkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Sekretariat</span><img src="../img/pracownicy/is.jpg"><span class="podpis">mgr Iwona Sarosiek</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/lb.jpg"><span class="podpis">Lucyna Bakun</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/ez.jpg"><span class="podpis">mgr Elwira Zalewska</span></a>
								 <a class="carousel-item"><span class="podpis">Woźna</span><img src="../img/pracownicy/ek.jpg"><span class="podpis">Elżbieta Komła</span></a>



							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2009/2010</h3>
							<div class="carousel">
								 <a class="carousel-item" href="#one!"><span class="podpis">Dyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/gz.jpg"><span class="podpis">Grzegorz Zalewski</span></a>
								 <a class="carousel-item" href="#two!"><span class="podpis">Vicedyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/lc.jpg"><span class="podpis">mgr Czarnowicz Lech</span></a>

								 <a class="carousel-item"  href="#three!"><span class="podpis">Kierownik pracowni</span><img src="../img/pracownicy/mwo.jpg"><span class="podpis">mgr inż. Mirosław Wojciech Osial</span></a>

								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/imk.jpg"><span class="podpis">mgr Iwona Mackiewicz-Kowalczuk</span></a>
								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/at.jpg"><span class="podpis">mgr Anna Tolko</span></a>

								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/kkc.jpg"><span class="podpis">mgr Klaudia Kmon-Ciuruk</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/rm.jpg"><span class="podpis">mgr Renata Maliszewska</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/ta.jpg"><span class="podpis">mgr Aneta Tymińska</span></a>

								 <a class="carousel-item"><span class="podpis">Historia, <br> WoS</span><img src="../img/pracownicy/slp.jpg"><span class="podpis">mgr Sylwester Leon Pakuła</span></a>
								 <a class="carousel-item"><span class="podpis">Matematyka</span><img src="../img/pracownicy/kg.jpg"><span class="podpis">mgr Krystyna Grygiewicz</span></a>
								 <a class="carousel-item"><span class="podpis">Fizyka</span><img src="../img/pracownicy/pd.jpg"><span class="podpis">mgr inż. Piotr Dziakowski</span></a>
								 <a class="carousel-item"><span class="podpis">Chemia <br> Biologia <br> Przedmioty zawodowe</span><img src="../img/pracownicy/ze.jpg"><span class="podpis">mgr Elwira Zabłocka</span></a>
								 <a class="carousel-item"><span class="podpis">Geografia <br> Podstawy przediębiorczości</span><img src="../img/pracownicy/ms.jpg"><span class="podpis">mgr Maria Sobolewska</span></a>

								 <a class="carousel-item"><span class="podpis">Wychowanie fizyczne <br> EDB</span><img src="../img/pracownicy/jl.jpg"><span class="podpis">mgr Jolanta Lech</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/mm.jpg"><span class="podpis">mgr inż. Marek Mozyrski</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/kr.jpg"><span class="podpis">Karolina Roszkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/js.jpg"><span class="podpis">mgr inż. Jerzy Szymaniuk</span></a>

								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/mCiostekD.jpg"><span class="podpis">Dariusz Ciostek</span></a>
								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/bj.jpg"><span class="podpis">mgr Bernard Jasielczuk</span></a>

								 <a class="carousel-item"><span class="podpis">Katecheza</span><img src="../img/pracownicy/tl.jpg"><span class="podpis">ks. mgr Tomasz Łapiak</span></a>
								 <a class="carousel-item"><span class="podpis">Biblioteka</span><img src="../img/pracownicy/jss.jpg"><span class="podpis">mgr Jolanta Stanisława Siemieniako</span></a>
								 <a class="carousel-item"><span class="podpis">Pedagog szkolny</span><img src="../img/pracownicy/ig.jpg"><span class="podpis">mgr Izabela Garkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Sekretariat</span><img src="../img/pracownicy/is.jpg"><span class="podpis">mgr Iwona Sarosiek</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/lb.jpg"><span class="podpis">Lucyna Bakun</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/ez.jpg"><span class="podpis">mgr Elwira Zalewska</span></a>
								 <a class="carousel-item"><span class="podpis">Woźna</span><img src="../img/pracownicy/ek.jpg"><span class="podpis">Elżbieta Komła</span></a>



							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2008/2009</h3>
							<div class="carousel">
								 <a class="carousel-item" href="#one!"><span class="podpis">Dyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/gz.jpg"><span class="podpis">Grzegorz Zalewski</span></a>
								 <a class="carousel-item" href="#two!"><span class="podpis">Vicedyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/lc.jpg"><span class="podpis">mgr Czarnowicz Lech</span></a>

								 <a class="carousel-item"  href="#three!"><span class="podpis">Kierownik pracowni</span><img src="../img/pracownicy/mwo.jpg"><span class="podpis">mgr inż. Mirosław Wojciech Osial</span></a>

								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/imk.jpg"><span class="podpis">mgr Iwona Mackiewicz-Kowalczuk</span></a>
								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/at.jpg"><span class="podpis">mgr Anna Tolko</span></a>

								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/kkc.jpg"><span class="podpis">mgr Klaudia Kmon-Ciuruk</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/rm.jpg"><span class="podpis">mgr Renata Maliszewska</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/ta.jpg"><span class="podpis">mgr Aneta Tymińska</span></a>

								 <a class="carousel-item"><span class="podpis">Historia, <br> WoS</span><img src="../img/pracownicy/slp.jpg"><span class="podpis">mgr Sylwester Leon Pakuła</span></a>
								 <a class="carousel-item"><span class="podpis">Matematyka</span><img src="../img/pracownicy/kg.jpg"><span class="podpis">mgr Krystyna Grygiewicz</span></a>
								 <a class="carousel-item"><span class="podpis">Fizyka</span><img src="../img/pracownicy/pd.jpg"><span class="podpis">mgr inż. Piotr Dziakowski</span></a>
								 <a class="carousel-item"><span class="podpis">Chemia <br> Biologia <br> Przedmioty zawodowe</span><img src="../img/pracownicy/ze.jpg"><span class="podpis">mgr Elwira Zabłocka</span></a>
								 <a class="carousel-item"><span class="podpis">Geografia <br> Podstawy przediębiorczości</span><img src="../img/pracownicy/ms.jpg"><span class="podpis">mgr Maria Sobolewska</span></a>

								 <a class="carousel-item"><span class="podpis">Wychowanie fizyczne <br> EDB</span><img src="../img/pracownicy/jl.jpg"><span class="podpis">mgr Jolanta Lech</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/mm.jpg"><span class="podpis">mgr inż. Marek Mozyrski</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/kr.jpg"><span class="podpis">Karolina Roszkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/js.jpg"><span class="podpis">mgr inż. Jerzy Szymaniuk</span></a>

								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/mCiostekD.jpg"><span class="podpis">Dariusz Ciostek</span></a>
								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/bj.jpg"><span class="podpis">mgr Bernard Jasielczuk</span></a>

								 <a class="carousel-item"><span class="podpis">Katecheza</span><img src="../img/pracownicy/tl.jpg"><span class="podpis">ks. mgr Tomasz Łapiak</span></a>
								 <a class="carousel-item"><span class="podpis">Biblioteka</span><img src="../img/pracownicy/jss.jpg"><span class="podpis">mgr Jolanta Stanisława Siemieniako</span></a>
								 <a class="carousel-item"><span class="podpis">Pedagog szkolny</span><img src="../img/pracownicy/ig.jpg"><span class="podpis">mgr Izabela Garkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Sekretariat</span><img src="../img/pracownicy/is.jpg"><span class="podpis">mgr Iwona Sarosiek</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/lb.jpg"><span class="podpis">Lucyna Bakun</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/ez.jpg"><span class="podpis">mgr Elwira Zalewska</span></a>
								 <a class="carousel-item"><span class="podpis">Woźna</span><img src="../img/pracownicy/ek.jpg"><span class="podpis">Elżbieta Komła</span></a>



							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2007/2008</h3>
							<div class="carousel">
								 <a class="carousel-item" href="#one!"><span class="podpis">Dyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/gz.jpg"><span class="podpis">Grzegorz Zalewski</span></a>
								 <a class="carousel-item" href="#two!"><span class="podpis">Vicedyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/lc.jpg"><span class="podpis">mgr Czarnowicz Lech</span></a>

								 <a class="carousel-item"  href="#three!"><span class="podpis">Kierownik pracowni</span><img src="../img/pracownicy/mwo.jpg"><span class="podpis">mgr inż. Mirosław Wojciech Osial</span></a>

								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/imk.jpg"><span class="podpis">mgr Iwona Mackiewicz-Kowalczuk</span></a>
								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/at.jpg"><span class="podpis">mgr Anna Tolko</span></a>

								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/kkc.jpg"><span class="podpis">mgr Klaudia Kmon-Ciuruk</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/rm.jpg"><span class="podpis">mgr Renata Maliszewska</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/ta.jpg"><span class="podpis">mgr Aneta Tymińska</span></a>

								 <a class="carousel-item"><span class="podpis">Historia, <br> WoS</span><img src="../img/pracownicy/slp.jpg"><span class="podpis">mgr Sylwester Leon Pakuła</span></a>
								 <a class="carousel-item"><span class="podpis">Matematyka</span><img src="../img/pracownicy/kg.jpg"><span class="podpis">mgr Krystyna Grygiewicz</span></a>
								 <a class="carousel-item"><span class="podpis">Fizyka</span><img src="../img/pracownicy/pd.jpg"><span class="podpis">mgr inż. Piotr Dziakowski</span></a>
								 <a class="carousel-item"><span class="podpis">Chemia <br> Biologia <br> Przedmioty zawodowe</span><img src="../img/pracownicy/ze.jpg"><span class="podpis">mgr Elwira Zabłocka</span></a>
								 <a class="carousel-item"><span class="podpis">Geografia <br> Podstawy przediębiorczości</span><img src="../img/pracownicy/ms.jpg"><span class="podpis">mgr Maria Sobolewska</span></a>

								 <a class="carousel-item"><span class="podpis">Wychowanie fizyczne <br> EDB</span><img src="../img/pracownicy/jl.jpg"><span class="podpis">mgr Jolanta Lech</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/mm.jpg"><span class="podpis">mgr inż. Marek Mozyrski</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/kr.jpg"><span class="podpis">Karolina Roszkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/js.jpg"><span class="podpis">mgr inż. Jerzy Szymaniuk</span></a>

								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/mCiostekD.jpg"><span class="podpis">Dariusz Ciostek</span></a>
								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/bj.jpg"><span class="podpis">mgr Bernard Jasielczuk</span></a>

								 <a class="carousel-item"><span class="podpis">Katecheza</span><img src="../img/pracownicy/tl.jpg"><span class="podpis">ks. mgr Tomasz Łapiak</span></a>
								 <a class="carousel-item"><span class="podpis">Biblioteka</span><img src="../img/pracownicy/jss.jpg"><span class="podpis">mgr Jolanta Stanisława Siemieniako</span></a>
								 <a class="carousel-item"><span class="podpis">Pedagog szkolny</span><img src="../img/pracownicy/ig.jpg"><span class="podpis">mgr Izabela Garkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Sekretariat</span><img src="../img/pracownicy/is.jpg"><span class="podpis">mgr Iwona Sarosiek</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/lb.jpg"><span class="podpis">Lucyna Bakun</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/ez.jpg"><span class="podpis">mgr Elwira Zalewska</span></a>
								 <a class="carousel-item"><span class="podpis">Woźna</span><img src="../img/pracownicy/ek.jpg"><span class="podpis">Elżbieta Komła</span></a>



							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2006/2007</h3>
							<div class="carousel">
								 <a class="carousel-item" href="#one!"><span class="podpis">Dyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/gz.jpg"><span class="podpis">Grzegorz Zalewski</span></a>
								 <a class="carousel-item" href="#two!"><span class="podpis">Vicedyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/lc.jpg"><span class="podpis">mgr Czarnowicz Lech</span></a>

								 <a class="carousel-item"  href="#three!"><span class="podpis">Kierownik pracowni</span><img src="../img/pracownicy/mwo.jpg"><span class="podpis">mgr inż. Mirosław Wojciech Osial</span></a>

								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/imk.jpg"><span class="podpis">mgr Iwona Mackiewicz-Kowalczuk</span></a>
								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/at.jpg"><span class="podpis">mgr Anna Tolko</span></a>

								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/kkc.jpg"><span class="podpis">mgr Klaudia Kmon-Ciuruk</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/rm.jpg"><span class="podpis">mgr Renata Maliszewska</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/ta.jpg"><span class="podpis">mgr Aneta Tymińska</span></a>

								 <a class="carousel-item"><span class="podpis">Historia, <br> WoS</span><img src="../img/pracownicy/slp.jpg"><span class="podpis">mgr Sylwester Leon Pakuła</span></a>
								 <a class="carousel-item"><span class="podpis">Matematyka</span><img src="../img/pracownicy/kg.jpg"><span class="podpis">mgr Krystyna Grygiewicz</span></a>
								 <a class="carousel-item"><span class="podpis">Fizyka</span><img src="../img/pracownicy/pd.jpg"><span class="podpis">mgr inż. Piotr Dziakowski</span></a>
								 <a class="carousel-item"><span class="podpis">Chemia <br> Biologia <br> Przedmioty zawodowe</span><img src="../img/pracownicy/ze.jpg"><span class="podpis">mgr Elwira Zabłocka</span></a>
								 <a class="carousel-item"><span class="podpis">Geografia <br> Podstawy przediębiorczości</span><img src="../img/pracownicy/ms.jpg"><span class="podpis">mgr Maria Sobolewska</span></a>

								 <a class="carousel-item"><span class="podpis">Wychowanie fizyczne <br> EDB</span><img src="../img/pracownicy/jl.jpg"><span class="podpis">mgr Jolanta Lech</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/mm.jpg"><span class="podpis">mgr inż. Marek Mozyrski</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/kr.jpg"><span class="podpis">Karolina Roszkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/js.jpg"><span class="podpis">mgr inż. Jerzy Szymaniuk</span></a>

								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/mCiostekD.jpg"><span class="podpis">Dariusz Ciostek</span></a>
								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/bj.jpg"><span class="podpis">mgr Bernard Jasielczuk</span></a>

								 <a class="carousel-item"><span class="podpis">Katecheza</span><img src="../img/pracownicy/tl.jpg"><span class="podpis">ks. mgr Tomasz Łapiak</span></a>
								 <a class="carousel-item"><span class="podpis">Biblioteka</span><img src="../img/pracownicy/jss.jpg"><span class="podpis">mgr Jolanta Stanisława Siemieniako</span></a>
								 <a class="carousel-item"><span class="podpis">Pedagog szkolny</span><img src="../img/pracownicy/ig.jpg"><span class="podpis">mgr Izabela Garkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Sekretariat</span><img src="../img/pracownicy/is.jpg"><span class="podpis">mgr Iwona Sarosiek</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/lb.jpg"><span class="podpis">Lucyna Bakun</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/ez.jpg"><span class="podpis">mgr Elwira Zalewska</span></a>
								 <a class="carousel-item"><span class="podpis">Woźna</span><img src="../img/pracownicy/ek.jpg"><span class="podpis">Elżbieta Komła</span></a>



							</div>
			</div>
		</div>
		<div class="row">
			<div class="col s12">
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym 2005/2006</h3>
							<div class="carousel">
								 <a class="carousel-item" href="#one!"><span class="podpis">Dyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/gz.jpg"><span class="podpis">Grzegorz Zalewski</span></a>
								 <a class="carousel-item" href="#two!"><span class="podpis">Vicedyrektor <br> Przedmioty zawodowe</span><img src="../img/pracownicy/lc.jpg"><span class="podpis">mgr Czarnowicz Lech</span></a>

								 <a class="carousel-item"  href="#three!"><span class="podpis">Kierownik pracowni</span><img src="../img/pracownicy/mwo.jpg"><span class="podpis">mgr inż. Mirosław Wojciech Osial</span></a>

								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/imk.jpg"><span class="podpis">mgr Iwona Mackiewicz-Kowalczuk</span></a>
								 <a class="carousel-item" href="#four!"><span class="podpis">język polski</span><img src="../img/pracownicy/at.jpg"><span class="podpis">mgr Anna Tolko</span></a>

								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/kkc.jpg"><span class="podpis">mgr Klaudia Kmon-Ciuruk</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/rm.jpg"><span class="podpis">mgr Renata Maliszewska</span></a>
								 <a class="carousel-item"><span class="podpis">Języki obce</span><img src="../img/pracownicy/ta.jpg"><span class="podpis">mgr Aneta Tymińska</span></a>

								 <a class="carousel-item"><span class="podpis">Historia, <br> WoS</span><img src="../img/pracownicy/slp.jpg"><span class="podpis">mgr Sylwester Leon Pakuła</span></a>
								 <a class="carousel-item"><span class="podpis">Matematyka</span><img src="../img/pracownicy/kg.jpg"><span class="podpis">mgr Krystyna Grygiewicz</span></a>
								 <a class="carousel-item"><span class="podpis">Fizyka</span><img src="../img/pracownicy/pd.jpg"><span class="podpis">mgr inż. Piotr Dziakowski</span></a>
								 <a class="carousel-item"><span class="podpis">Chemia <br> Biologia <br> Przedmioty zawodowe</span><img src="../img/pracownicy/ze.jpg"><span class="podpis">mgr Elwira Zabłocka</span></a>
								 <a class="carousel-item"><span class="podpis">Geografia <br> Podstawy przediębiorczości</span><img src="../img/pracownicy/ms.jpg"><span class="podpis">mgr Maria Sobolewska</span></a>

								 <a class="carousel-item"><span class="podpis">Wychowanie fizyczne <br> EDB</span><img src="../img/pracownicy/jl.jpg"><span class="podpis">mgr Jolanta Lech</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/mm.jpg"><span class="podpis">mgr inż. Marek Mozyrski</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/kr.jpg"><span class="podpis">Karolina Roszkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Przedmioty zawodowe</span><img src="../img/pracownicy/js.jpg"><span class="podpis">mgr inż. Jerzy Szymaniuk</span></a>

								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/mCiostekD.jpg"><span class="podpis">Dariusz Ciostek</span></a>
								 <a class="carousel-item"><span class="podpis">Praktyczna nauka zawodu</span><img src="../img/pracownicy/bj.jpg"><span class="podpis">mgr Bernard Jasielczuk</span></a>

								 <a class="carousel-item"><span class="podpis">Katecheza</span><img src="../img/pracownicy/tl.jpg"><span class="podpis">ks. mgr Tomasz Łapiak</span></a>
								 <a class="carousel-item"><span class="podpis">Biblioteka</span><img src="../img/pracownicy/jss.jpg"><span class="podpis">mgr Jolanta Stanisława Siemieniako</span></a>
								 <a class="carousel-item"><span class="podpis">Pedagog szkolny</span><img src="../img/pracownicy/ig.jpg"><span class="podpis">mgr Izabela Garkowska</span></a>
								 <a class="carousel-item"><span class="podpis">Sekretariat</span><img src="../img/pracownicy/is.jpg"><span class="podpis">mgr Iwona Sarosiek</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/lb.jpg"><span class="podpis">Lucyna Bakun</span></a>
								 <a class="carousel-item"><span class="podpis">Księgowość</span><img src="../img/pracownicy/ez.jpg"><span class="podpis">mgr Elwira Zalewska</span></a>
								 <a class="carousel-item"><span class="podpis">Woźna</span><img src="../img/pracownicy/ek.jpg"><span class="podpis">Elżbieta Komła</span></a>



							</div>
			</div>
		</div>
  </div>
  <?php
    include_once('includes/footer.php');
  ?>
</body>
</html>
