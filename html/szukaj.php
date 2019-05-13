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
		<?php
			if(isset($_GET['hide'])){
				if($_GET['hide'] == true){
					
				}else{
					?>
						<form action="#">
							<h2>Wyszukaj posty</h2>
							<br>
							<div class="row">
								<div class="col s6">
									<h3>Data od:</h3> 
									<input type="text" class="datepicker" placeholder="Kliknij aby wybrać datę"> 
								</div>
								<div class="col s6">
									<h3>Data do:</h3>
									<input type="text" class="datepicker" placeholder="Kliknij aby wybrać datę">
								</div>
							</div>
							

							
							<button class="waves-effect waves-light btn right">Szukaj</button>
						</form>
					<?php
				}
			}else{
				?>
					<form action="#">
					<h2>Wyszukaj posty</h2>
					<br>
					<div class="row">
						<div class="col s6">
							<h3>Data od:</h3> 
							<input type="text" class="datepicker" placeholder="Kliknij aby wybrać datę"> 
						</div>
						<div class="col s6">
							<h3>Data do:</h3>
							<input type="text" class="datepicker" placeholder="Kliknij aby wybrać datę">
						</div>
					</div>
					

					
					<button class="waves-effect waves-light btn right">Szukaj</button>
				</form>
				<?php
			}
		?>

	</div>


	<?php
		include_once('includes/footer.php');
	?>
	<script type="text/javascript">
		
	</script>
	<script type="text/javascript">
		
	</script>
</body>
</html>