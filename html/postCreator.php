<?php
session_start();
if(!isset($_SESSION['login'])){
   header("Location: http://localhost/strona/html/logowanie.php");
}
?>
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
  <div class="slider">
     <ul class="slides">
       <a class="btn-floating btn-large waves-effect waves-light positionButton top"><i class="material-icons">arrow_upward</i></a><br>
       <a class="btn-floating btn-large waves-effect waves-light positionButton center"><i class="material-icons">code</i></a><br>
       <a class="btn-floating btn-large waves-effect waves-light positionButton bottom"><i class="material-icons">arrow_downward</i></a>
       <div class="caption">
         <h3 class="tytul grey-text text-lighten-3">This is our big Tagline!</h3>
         <h5 class="light grey-text text-lighten-3 tresc truncate">Here's our small slogan.</h5>
       </div>
      <a class="btn-floating btn-large waves-effect waves-light slideAdd"><i class="material-icons">add</i></a>
      <input name="file[]" type="file" multiple class="hide" id="slideadd" accept='image/*' />
       <li>
         <img class="sliderCreator" src="../img/gos.jpg"> <!-- random image -->
       </li>
     </ul>
   </div>

	<div class="container body">
		<p class="formP">Tag</p>
		<div class="chips chips-autocomplete"></div>


    <p class="formP">Tytuł</p>
  			<input type="text" autocomplete="off" name="title">
  			<p class="formP">Treść</p>
  			<br>
  			<textarea name="body"></textarea>
        <br>
			<button class="btn waves-effect waves-light" type="submit" name="action">wyślij
		    	<i class="material-icons right">send</i>
			</button>
			<div class="actionButtons">
				<a id="preview" href="#modal1" class="modal-trigger btn-floating btn-large waves-effect waves-light"><i class="material-icons">search</i></a>

				<input name="file[]" type="file" multiple class="hide" id="images" accept='image/*' />
				<a id="upload" class="btn-floating btn-large waves-effect waves-light"><i class="material-icons">file_upload</i></a>
			</div>


			<div id="imagesBox">
				<div class="row center-align">

				</div>
			</div>


			<!-- modal -->
				<div class="modal modal-fixed-footer" id="modal1">
					<div class="modal-content">
						<div class="row">
		        			<div class="col s12 card">
								<h3 class="letterSpac replace"></h3>
								<p class="right-align replace"></p>

								<h5 class="letterSpac border replace">

								</h5>
							</div>
		        		</div>
					</div>
					<div class="modal-footer">
						<a href="#!" class="modal-close waves-effect waves-green btn-flat">Zamknij</a>
					</div>
				</div>
		</div>
			<!-- end modal -->

	<br>
	<br>
	<?php
		include_once('includes/footer.php');
	?>
	<script type="text/javascript" src="../js/creator.js"></script>
	<script type="text/javascript" src="../js/hideImages.js"></script>
	<script type="text/javascript">
		
		$.post(tagLoad,
			{
				load:true	
			},function(data,status){
				/*console.log(data)*/
				let tagJSON = JSON.parse(data);
				let tag = "{";
				for(let i=0;i<tagJSON.length;i++){
					tag+= '"'+tagJSON[i].tag+'"'+':null';
					if(i!==tagJSON.length-1){
						tag+=',';
					}
				}
				tag+="}";
				/*console.log(tag)
				console.log(JSON.parse(tag))*/
				$('.chips').chips();
				$('.chips-autocomplete').chips({
				    autocompleteOptions: {
				    	data: JSON.parse(tag),
				    	limit: Infinity,
				    	minLength: 1
				    }
		 		});
			})
		
	</script>
</body>
</html>
