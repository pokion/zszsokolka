<!DOCTYPE html>
<html lang="PL">
<head>
	<title>Klasy</title>

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
			<select name="year" class="years browser-default z-depth-4">
				<?php
						include_once('../php/klasy_years.php');
				?>
			</select>
			<h3 class="center-align">Klasy w
			Zespole Szkół Zawodowych w Sokółce
			w roku szkolnym <span class="rok"></span></h3>
			<div id="placeholder">

			</div>
	 </div>
  <?php
    include_once('includes/footer.php');
  ?>

	<script src="../js/klasy_ajax.js"></script>
	<script type="text/javascript" src="../js/viewer.min.js"></script>
	<script type="text/javascript" src="../js/gallery_class.js"></script>
</body>
</html>
