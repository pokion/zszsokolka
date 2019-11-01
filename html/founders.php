<!DOCTYPE html>
<html lang="PL">
<head>
	<title>Strona Twórców</title>

	<?php
		include_once('includes/header.php');
		$inc = 'drop-uczniowie';
	?>
</head>
<body>
	<?php
		include_once('includes/nav.php');
	?>
	  <div class="parallax-container">
		  <div class="parallax parallxZNapisem">
					<img src='../img/static/founders/paint-founder.jpg'>
		  </div>
			<div class="naglowek">
					<h1 class=" white-text overlay">
						Twórcy i wykorzystane technologie
					</h1></div>
		</div>
    <div class="container center-align row">
				<p>Strona została stworzona przez Patryka Olechno i Cezarego Bubieńca przy użyciu następujących narzędzi:</p>
				<div class="col s12 m6">
					<a href="https://jquery.com/"><img class="responsive-img" src="../img/static/founders/jquery.png" alt=""></a>
				</div>
				<div class="col s12 m6">
					<a href="https://fengyuanchen.github.io/viewerjs/"><img class="responsive-img" src="../img/static/founders/viewer.png" alt=""></a>
				</div>
				<div class="col s12 m6">
					<a href="https://materializecss.com/"><img class="responsive-img" src="../img/static/founders/materialize.png" alt="">
					<h3>Materializecss</h3></a>
				</div>
		</div>
	<!-- end container -->
	<?php
		include_once('includes/footer.php');
	?>
	<script type="text/javascript" src="../js/loadImages.js"></script>
	<script type="text/javascript" src="../js/loadPosts.js"></script>

</body>
</html>
