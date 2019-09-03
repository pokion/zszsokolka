<!DOCTYPE html>
<html lang="PL">
<head>
	<title>Pracownicy</title>

	<?php
		include_once('includes/header.php');
		require_once('../php/baza.php');
		$inc = 'drop-szkola';
	?>
</head>
<body>

  	<?php
  		include_once('includes/nav.php');
  	?>
			<div class="container-fluid">
			<h3>Wybierz rok szkolny:</h3>
		<select name="year" class="years browser-default select-wrapper z-depth-4">
			<?php
					include_once('../php/pracownicy_years.php');
			?>
		</select>
		<h3 class="center-align">Nauczyciele i pracownicy
		Zespołu Szkół Zawodowych w Sokółce
		w roku szkolnym <span class="rok"></span></h3>
			<div class="col s12 placeholder">

		 </div>
	 </div>
  <?php
    include_once('includes/footer.php');
  ?>

	<script src="../js/ajax.js"></script>

</body>
</html>
