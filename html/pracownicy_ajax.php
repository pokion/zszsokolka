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

        <select name="year">
          <h4>Wybierz rok szkolny:</h4>
          <option value="1" selected="selected">2018/2019</option>
          <option value="2">2017/2018</option>
          <option value="3">2016/2017</option>
          <option value="4">2015/2016</option>
        </select>
				<h3 class="center-align">Nauczyciele i pracownicy
						Zespołu Szkół Zawodowych w Sokółce
						w roku szkolnym <span class="rok"><?php $rok ?></span></h3>

						</div>
					</div>
			</div>

  <?php
    include_once('includes/footer.php');
  ?>

	<script src="../js/ajax.js"></script>
</body>
</html>
