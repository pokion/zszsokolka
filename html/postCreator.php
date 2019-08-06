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
	<style type="text/css">
		.chip:hover{
			cursor: pointer;
		}
		.chip{
			font-size: 1.2rem
		}
		.body{
			max-height: 100%;
			position: unset;
		}
	</style>

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
         <img class="sliderCreator" image="false" src="../images/brakZdj.jpg"> <!-- random image -->
       </li>
     </ul>
   </div>

	<div class="container body">
		<p class="formP">Tag</p>

		<div id="tags">

		</div>


    <p class="formP">Tytuł</p>
  			<input type="text" autocomplete="off" name="title">
  			<p class="formP">Treść</p>
  			<br>
  			<textarea name="body"></textarea>
        <br>
			<button class="btn waves-effect waves-light" id="dodajPost" type="submit" name="action">wyślij
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


		</div>
	</div>

			<!-- modal -->
				<div class="modal modal-fixed-footer" id="modal1">
					<div class="modal-content">
		        				<div class="parallax-container">
		        					<div class="parallax">
		        						<img class="mainimg" src="#">
		        					</div>
		        				</div>
		        				<div class="section white">
		        					<div class="row container">
		        						<h2 class="header replace"></h2>
		        						<p class="grey-text text-darken-3 lighten-3 replace"></p>
		        					</div>
		        				</div>

								</h5>
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
		$(document).ready(function(){
			$('.parallax').parallax();
		});


		$(document).on('click','.chip',function(){
			/*$(this).css('background-color','#4db6ac')*/
			let press = $(this).attr('val');
			console.log(press)

			if(press == 0){
				$(this).css('background-color','#4db6ac');
				$(this).attr({val: 1});
			}else if(press == 1){
				$(this).css('background-color','#e4e4e4');
				$(this).attr('val', '0');
			}
		})

		$.post(tagLoad,
			{
				load:true
			},function(data,status){
				/*console.log(data)*/
				let tagJSON = JSON.parse(data);
				console.log(tagJSON)

				tagJSON.forEach((elem)=>{
					console.log(elem)
					let div = `
						<div class="chip" val="0" tagId="${elem.id}">
							${elem.tag}
						</div>
					`;

					$('#tags').append($(div))
				})

			})

	</script>
</body>
</html>
