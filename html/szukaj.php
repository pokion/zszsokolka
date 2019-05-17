<!DOCTYPE html>
<html>
<head>
	<?php
		include_once('includes/header.php');
		$inc = 'szukaj';
	?>
	<style type="text/css">
		.tagi{
			position: absolute;
			display: inline-block;
			bottom: 0px;
			left: 0px;
		}
		.babyTag{
			display: inline-block;

		}
	</style>
	<meta charset="utf-8">
	<title>Szukaj</title>
</head>
<body>
	<?php
		include_once('includes/nav.php');

	?>
		<?php
			if(isset($_GET['hide'])){
				if($_GET['hide'] == true){
					if(!empty($_GET['id'])){
						?>
							<div class="parallax-container">
								<div class="parallax">
									<img src="">
									<div class="tagi"></div>
								</div>
							</div>
							<div class="section white">
								<div class="row container">
									<h2 class="header"></h2>
									<p class="grey-text text-darken-3 lighten-3"></p>
								</div>
							</div>
							<script type="text/javascript" src="../js/jquery.min.js"></script>
							<script type="text/javascript">
								let postid = '<?php echo $_GET['id']; ?>'
								$.post('/strona/php/loadPosts.php',{id:postid},function(data){
									let JSONpar = JSON.parse(data);
									$('.header').html(JSONpar[0].tit);
									$('.container>p').html(JSONpar[0].bod);
									console.log(JSONpar[0]);
									$('.tagi').html(JSONpar[0].tagsId);
									//tutaj jest skrypt który szyka tagi
										$.post('/strona/php/searchTag.php',{},function(data){
											let JSONtags = JSON.parse(data);
											$('.tagi').each(function(index,elem){
												let tags = $(elem).html();
												let arrTags = tags.split(',');
												$(elem).html("");
												for(let i=1;i<arrTags.length;i++){
													let tagId = arrTags[i]

													$(elem).append(`<div class="babyTag chip"><a href="#">${JSONtags[tagId-1].name}</a></div>`)
												}

											})
										})

										$.post('/strona/php/searchImage.php',{postId:postid,main:1},function(data){
											let JSONImg = JSON.parse(data);
											JSONImg.forEach(function(elem){
												if(elem.main == 0){
													let div = `<a href="../images/${elem.name}" data-lightbox="roadtrip" class="imageStyle">
														<img src="../images/${elem.name}"
													</a>`;
													$('.container>p').append($(div))
												}if(elem.main == 1){
													let div = `<a href="../images/${elem.name}" data-lightbox="roadtrip" class="imageStyle">
														<img src="../images/${elem.name}"
													</a>`;
													$('.container>p').append($(div))
													$('.parallax>img').attr('src','../images/'+elem.name)
												}
											})

										})
								})
								
							</script>
						<?php
					}else{
						?>
						<h1>ERROR: 00x68656c70</h1>
						<?php
					}
				}
			}else{
				?>
				<div class="container">
					<form action="#">
					<h2>Wyszukaj posty</h2>
					<br>
					<div class="row">
						<div class="col s6">
							<h3>Wybierz rok:</h3> 
							<div class="input-field col s12">
							    <select>
							      <option value="" disabled selected>Choose your option</option>
							      <option value="1">Option 1</option>
							      <option value="2">Option 2</option>
							      <option value="3">Option 3</option>
							    </select>
							    <label>Materialize Select</label>
							  </div>
						</div>
						<div class="col s6">
							<h3>Data do:</h3>
							<input type="text" class="datepicker" placeholder="Kliknij aby wybrać datę">
						</div>
					</div>
					

					
					<button class="waves-effect waves-light btn right">Szukaj</button>
				</form>
				</div>
				<?php
			}
		?>

	

	<?php
		include_once('includes/footer.php');
	?>
	<script type="text/javascript">
		
	</script>
</body>
</html>