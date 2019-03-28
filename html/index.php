<!DOCTYPE html>
<html lang="PL">
<head>
	<title>strona</title>

	<?php
		include_once('includes/header.php');
		$inc = 'index';
	?>
	<link rel="stylesheet" href="../css/startowa.css">
</head>
<body>
	<?php
		include_once('includes/nav.php');
	?>

	<div class="slider col s12">
	<ul class="slides">
		<li>
			<img src="https://farm8.staticflickr.com/7882/46682889314_e00e116314_c.jpg">
			<!-- random image -->
			<div class="caption">
				<h3>This is our big Tagline!</h3>
				<h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
			</div>
		</li>
		<li>
			<img src="../img/static/o.jpg"> <!-- random image -->
			<div class="caption left-align">
				<h3>Wizyta uczniów Zespołu Szkół Samorządowych z Krynekn</h3>
				<h5 class="light grey-text text-lighten-3">7 marca 2019 roku Zespół Szkół Zawodowych im. Elizy Orzeszkowej w Sokółce..</h5>
			</div>
		</li>
		<li>
			<img src="https://farm8.staticflickr.com/7846/46699036634_3a1fd33dee_c.jpg"> <!-- random image -->
			<div class="caption right-align">
				<h3>Right Aligned Caption</h3>
				<h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
			</div>
		</li>
		<li>
			<img src="https://farm5.staticflickr.com/4812/46490974045_9e3932d0a7_c.jpg"> <!-- random image -->
			<div class="caption center-align">
				<h3>This is our big Tagline!</h3>
				<h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
			</div>
		</li>
	</ul>
</div>
	<div class="container">
	
</div>
	<!-- end container -->
	<?php
		include_once('includes/footer.php');
	?>
	<script type="text/javascript" src="../js/loadImages.js"></script>
	<script type="text/javascript" src="../js/loadPosts.js"></script>

</body>
</html>
