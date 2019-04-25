<!DOCTYPE html>
<html>
<head>
	<?php
		include_once('includes/header.php');
		$inc = 'szukaj';
	?>
	<meta charset="utf-8">
	<title>Szukaj</title>
</head>
<body>
	<?php
		include_once('includes/nav.php');
	?>

	<div class="container">
		<form action="#">
			<h2>Wyszukaj posty</h2>
			<br>
			<h3>Data od:</h3> 
			<input type="text" class="datepicker"> 

			<h3>Data do:</h3>
			<input type="text" class="datepicker">
			<button class="waves-effect waves-light btn right">Szukaj</button>
		</form>
	</div>


	<?php
		include_once('includes/footer.php');
	?>
	<script type="text/javascript">
		document.addEventListener('DOMContentLoaded', function() {
		    var elems = document.querySelectorAll('.datepicker');
		    var instances = M.Datepicker.init(elems);
	  });
	</script>
</body>
</html>