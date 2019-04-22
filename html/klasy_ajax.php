<!DOCTYPE html>
<html lang="PL">
<head>
	<title>Rekrutacja</title>

	<?php
		include_once('includes/header.php');
		require_once('../php/baza.php');
		$inc = 'drop-uczniowie';
	?>
</head>
<body>

  	<?php
  		include_once('includes/nav.php');
  	?>
		<div class="container">
			<h3>Wybierz rok szkolny:</h3>
		<select name="year" class="years">
			<?php
					include_once('../php/klasy_years.php');
			?>
		</select>
		<h3 class="center-align">Klasy w
		Zespole Szkół Zawodowych w Sokółce
		w roku szkolnym <span class="rok"></span></h3>
			<div class="col s12 placeholder klasy">

		 </div>
</div>
  <?php
    include_once('includes/footer.php');
  ?>

	<script src="../js/klasy_ajax.js"></script>

</body>
</html>
