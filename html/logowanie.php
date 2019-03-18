<?php
	session_start();
	include_once('../php/baza.php');

$conn = new mysqli($servername, $username, $password, $dbname);

function filtruj($zmienna)
{
		if(get_magic_quotes_gpc())
				$zmienna = stripslashes($zmienna); // usuwamy slashe

	 // usuwamy spacje, tagi html oraz niebezpieczne znaki
		return mysqli_real_escape_string($conn, htmlspecialchars(trim($zmienna)));
}

if (isset($_POST['loguj']))
{
	 $login = $_POST['login'];
	 $haslo = $_POST['haslo'];
	 $ip = $_SERVER['REMOTE_ADDR'];

	 // sprawdzamy czy login i hasło są dobre
	 if (mysqli_num_rows(mysqli_query($conn, "SELECT login, haslo FROM uzytkownicy WHERE login = '".$login."' AND haslo = '".$haslo."';")) > 0)
	 {
			// uaktualniamy date logowania oraz ip
			mysqli_query($conn, "UPDATE `uzytkownicy` SET (`logowanie` = '".time().", `ip` = '".$ip."'') WHERE login = '".$login."';");

			$_SESSION['zalogowany'] = true;
			$_SESSION['login'] = $login;

			header('Location: http://localhost/html/postCreator.php');

	 }
	 else echo  '<span class="zleDane">Złe dane</span>';
}
$conn->close();
?>
<!DOCTYPE html>
<html lang="PL">
<head>
	<title>strona</title>
  <?php
		include_once('includes/header.php');

	?>
<link rel="stylesheet" href="/css/logowanie.css">
</head>
<body>
  <div class="back">
    <a href="index.php">< Powrót na stronę główną </a>
  </div>
	<div class="login valign-wrapper center-align">
    <form method="POST" action="logowanie.php" class="z-depth-5">
      <h4>Logowanie</h4>
      <div class="row">
        <div class="input-field col s12">
          <input required id="login" type="text" class="validate" name="login">
          <label for="email">Login</label>
        </div>
        <div class="input-field col s12">
          <input required id="password" type="password" class="validate" name="haslo">
          <label for="Hasło">Hasło</label>
        </div>
      </div>
      <button class="btn waves-effect waves-light" type="submit" name="loguj">Zaloguj
        <i class="material-icons right">keyboard_arrow_right</i>
      </button>
    </form>

	</div>
	<!-- scripts -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.10.0/js/lightbox.min.js"></script>
	<script type="text/javascript" src="../js/loadPosts.js"></script>
</body>
</html>
