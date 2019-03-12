<!DOCTYPE html>
<html lang="PL">
<head>
	<title>Rekrutacja</title>

	<?php
		include_once('includes/header.php');
		require_once('../php/baza.php');
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
	        <select name="year" class="years">
					<?php
						include_once('../php/pracownicy_years.php');
					 ?>
	        </select>
					<h3 class="center-align">Nauczyciele i pracownicy
							Zespołu Szkół Zawodowych w Sokółce
							w roku szkolnym <span class="rok"></span></h3>
							<div id="placeholder">
								
							</div>
				</div>
		 </div>
	</div>

  <?php
    include_once('includes/footer.php');
  ?>

	<script src="../js/ajax.js"></script>

</body>
</html>
