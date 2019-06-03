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
		.mianTag{
			display: inline-block;
			margin-top: 10px;
			background-color: white;
			font-size: 20px;
		}
		.babyTag{
			display: inline-block;
			border-radius: 16px 16px 0 0;
			margin-bottom: 0px;
			background-color: white;
		}
		.data{
			position: absolute;
			right: 0px;
			top: 0px;
			padding: 10px;
			border-radius: 0 0 0 5px;
			background-color: white;
			
		}
		.input-field{
			z-index: 2 !important;
		}
		form{
			margin-bottom: 150px;
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
					<form action="#" id="sendForm" method="get">
					<h2>Wyszukaj posty</h2>
					<br>
					<div class="row">
						<div class="col s6">
							<h3>Wybierz rok:</h3> 
							<div class="input-field col s12">
							    <select id="years">
							      <option value="" disabled selected>Choose your option</option>
							      <?php
							      		include '../php/config.php';
										$conn = new mysqli($server,$login,$password,$database);
										$conn->set_charset("utf8");
										if ($conn->connect_error) {
											die("Connection failed: " . $conn->connect_error);
										}

										$sql = "SELECT DISTINCT year(post_data) FROM `posts` where year(post_data)>2017 ORDER BY `posts`.`post_data` DESC LIMIT 18446744073709551610";

										$result = mysqli_query($conn, $sql);

										if (mysqli_num_rows($result) > 0) {
											while($row = mysqli_fetch_assoc($result)) {
											    echo "<option name=\"rok\">".$row['year(post_data)']."</option>";
											}
										}
							      ?>
							    </select>
							  </div>
						</div>
						<div class="col s6">
							<h3>Wybierz miesiąc:</h3>
							<div class="input-field col s12">
							    <select id="months">
							      <option value="" disabled selected>Choose your option</option>
							      <option>01</option>
							      <option>02</option>
							      <option>03</option>
							      <option>04</option>
							      <option>05</option>
							      <option>06</option>
							      <option>07</option>
							      <option>08</option>
							      <option>09</option>
							      <option>10</option>
							      <option>11</option>
							      <option>12</option>
							    </select>
							  </div>
						</div>
						<div class="col s12">
							<h3>Wybierz tag:</h3>
							<div class="tagiMain center-align"></div>
						</div>
					</div>
					

					
					<button id="send" class="waves-effect waves-light btn right">Szukaj</button>
				</form>
					<div class="row">
						<?php

						if(isset($_GET['year'])||isset($_GET['month'])||isset($_GET['tag'])){
							$sql = "SELECT * FROM `posts` where ";
							$arr = [];
								if(isset($_GET['year'])){
									array_push($arr, "year(post_data)=".$_GET['year']);
								}if(isset($_GET['month'])){
									array_push($arr, "month(post_data)=".$_GET['month']);
								}
								if(sizeof($arr)==1){
									$sql = $sql.$arr[0];
								}if(sizeof($arr)==2){
									$sql = $sql.$arr[0]." and ".$arr[1];
								}if(sizeof($arr)==3){
									$sql = $sql.$arr[0]." and ".$arr[1]." and ".$arr[2];
								}
							$sql = $sql . " ORDER BY `post_data` DESC";

							$result = mysqli_query($conn, $sql);

							if (mysqli_num_rows($result) > 0) {
						    // output data of each row
								
							    while($row = mysqli_fetch_assoc($result)) {
							        $div = '<div class="col s12 m12 6 l12 xl6">';
									$div = $div.'<div class="card">';
									$div = $div.'<div class="card-image waves-effect waves-block waves-light">';
									$div = $div.'<div postid="'.$row['post_id'].'" style="background-image: url(../images/brakZdj.jpg);height: 250px;';
									$div = $div.'background-position: center;background-size: cover;"></div>';
									$div = $div.'<div class="tagi">'.$row['tags_id'].'</div>';
									$div = $div.'</div>';
									$div = $div.'<div class="card-content">';
									$div = $div.'<span id="title" class="truncate card-title activator grey-text text-darken-4">';
									$div = $div.$row['title'];
									$div = $div.'</span>';
									$div = $div.'<p class="data z-depth-1">'.$row['post_data'].'</p>';
									$div = $div.'<div  id="body">';
									$div = $div.'<p>'.substr($row['body'],0,267).'</p>';
									$div = $div.'</div>';
									$div = $div.'</div>';
									$div = $div.'<div class="card-action">';
									$div = $div.'<a href="szukaj.php?hide=true&id='.$row['post_id'].'">Czytaj dalej</a>';
									$div = $div.'</div>';
									$div = $div.'</div>';
									$div = $div.'</div>';
							        echo $div;
						    	}
						    }
						}
							
						?>
						<script type="text/javascript" src="../js/jquery.min.js"></script>
						<script type="text/javascript">

							function searchTagInPost(){
								$.post('/strona/php/searchTag.php',{},function(data){
									let JSONtags = JSON.parse(data);
									$('.tagi').each(function(index,elem){
										let tags = $(elem).html();
										let arrTags = tags.split(',');
										$(elem).html("");
										for(let i=1;i<arrTags.length;i++){
											let tagId = arrTags[i]

											$(elem).append(`<div class="babyTag chip z-depth-2"><a href="#">${JSONtags[tagId-1].name}</a></div>`)
										}

									})
								})
							}
							function dataChange(index,element){
								let months = ["stycznia",'lutego','marca','kwietnia','maja','czerwca','lipca','sierpnia','września','października','listopada','grudnia'];
								let date = $(element).html().split(" ")
								let dateWitchoutHour = date[0].split("-")
								let day = dateWitchoutHour[1]

								$(element).html(dateWitchoutHour[2]+' '+months[day-1]+' '+dateWitchoutHour[0]+' r.')
							}
							$('.data').each(dataChange);
							searchTagInPost()
						</script>
					</div>
				</div>
				<?php
			}
		?>

	

	<?php
		include_once('includes/footer.php');
	?>
	
	<script type="text/javascript">
		function searchTag(){
			$.post(searchTags,{},function(data){
				let JSONtags = JSON.parse(data);

				for(let i=0;i<JSONtags.length;i++){
					$('.tagiMain').append(`<div class="mianTag clickable chip z-depth-1 waves-teal waves-effect" val="0">${JSONtags[i].name}</div>`)
				}
			})
		}	
		searchTag()
		$(document).on('click','.clickable',function(){
			/*$(this).css('background-color','#4db6ac')*/
			let press = $(this).attr('val');
			console.log(press)

			if(press == 0){
				$(this).css('background-color','#4db6ac');
				$(this).attr({val: 1});
				$(this).removeClass('waves-light');
				$(this).addClass('waves-teal');
				$(this).css('color',"white")
			}else if(press == 1){
				$(this).css('background-color','#fff');
				$(this).attr('val', '0');
				$(this).removeClass('waves-teal');
				$(this).addClass('waves-light');
				$(this).css('color','rgba(0,0,0,0.6)')
			}
		})
		function searchImg(){
			$('div[postid]').each(function(index,elem){
				let id = $(elem).attr('postid');
				$.post(searchImage,{
					postId: id
				},function(data){
					let JSONpar = JSON.parse(data)
					if(JSONpar.length>0){
						$('div[postid="'+JSONpar[0].id+'"]').css('background-image',`url(../images/${JSONpar[0].name})`);
						$('div[postid="'+JSONpar[0].id+'"]').removeAttr('postid')
					}
				})
			});
		}
		searchImg()
	</script>

	<script type="text/javascript">
		$(document).on('click','#send',function(e){
			e.preventDefault();
			let year,month,tag;
			let link = '/strona/html/szukaj.php?';


			if($('#years').val() != null) link = link+ 'year=' + $('#years').val()+'&';
			if($('#months').val() != null) link = link+ 'month='+$('#months').val()+'&';

			$('#sendForm').attr('action',link)

			e.stopPropagation();
			$('#sendForm').submit()

		})
	</script>
</body>
</html>