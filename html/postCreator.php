<!DOCTYPE html>
<html lang="PL">
<head>
	<title>create post</title>

	<?php
		include_once('includes/header.php');
		$inc = 'createPosts';
	?>
	<link rel="stylesheet" type="text/css" href="../css/createPost.css">

</head>
<body>
	<?php
		include_once('includes/nav.php');
	?>

	<div class="container body">

			<p class="formP">Tytuł</p>
			<input type="text" autocomplete="off" name="title">
			<p class="formP">Treść</p>
			<br>
			<a id="preview" href="#modal1" class="modal-trigger btn-floating btn-large waves-effect waves-light red"><i class="material-icons">search</i></a>
			<br>
			<br>
			<textarea name="body"></textarea> 
			<br>
			<br>
			<button class="btn waves-effect waves-light" type="submit" name="action">wyślij
		    	<i class="material-icons right">send</i>
			</button>

			<!-- modal -->
				<div class="modal modal-fixed-footer" id="modal1">
					<div class="modal-content">
						<div class="row">
		        			<div class="col s12 card">
								<h3 class="letterSpac replace"></h3>
								<p class="right-align replace"></p>
	
								<h5 class="letterSpac border replace"></h5>
							</div>
		        		</div>
					</div>
					<div class="modal-footer">
						<a href="#!" class="modal-close waves-effect waves-green btn-flat">Zamknij</a>
					</div>
				</div>
		</div>
			<!-- end modal -->


	</div>
	<br>
	<br>
	<?php
		include_once('includes/footer.php');
	?>
	<script type="text/javascript" src="../js/creator.js"></script>
</body>
</html>