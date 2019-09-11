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
		.tag{
			margin: 30px;
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
		.container > p{
			text-align: justify;
		}
		.input-field{
			z-index: 2 !important;
		}
		form{
			margin-bottom: 150px;
		}
		html, body {
    height: 100%;
    width: 100%;
    margin: 0;
    /*display: initial;*/
    display: table;
}
footer {
    display: table-row;   /*nie usuwać, trzyma footer na dole strony gdy za malo contentu */
    height: 0;
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
						<style type="text/css">
							.indet{
								text-indent: 3em;
							}
						</style>
							<div class="parallax-container">
								<div class="parallax">
									<img src="../images/brakZdj.jpg">
								</div>
								<div class="tagi"></div>
							</div>
							<div class="section white">
								<div class="row container">
									<h3 class="header"></h3>
									<p class="indet grey-text text-darken-3 lighten-3">
											
											

									</p>
									<div class="docs-galley">
										<ul id="images">
													
										</ul>
									</div>
								</div>
							</div>
							
							<script type="text/javascript" src="../js/jquery.min.js"></script>
							<script type="text/javascript">
								let postid = '<?php echo $_GET['id']; ?>'
								$.post('/strona/php/loadPosts.php',{id:postid},function(data){
									let JSONpar = JSON.parse(data);
									console.log('czemu')
									$('.header').html(JSONpar[0].tit);
									$('.container>p').html(JSONpar[0].bod);
									$('.tagi').html(JSONpar[0].tagsId);
									//tutaj jest skrypt który szuka tagi
										$.post('/strona/php/searchTag.php',{},function(data){
											let JSONtags = JSON.parse(data);
											$('.tagi').each(function(index,elem){
												let tags = $(elem).html();
												let arrTags = tags.split(',');
												$(elem).html("");
												for(let i=1;i<arrTags.length;i++){
													let tagId = arrTags[i]
													$(elem).append('<div class="babyTag chip"><a href="#">'+JSONtags[tagId-1].name+'</a></div>')
												}
											})
										})
										$.post('/strona/php/searchImage.php',{postId:postid,main:1},function(data){
											let JSONImg = JSON.parse(data);
											JSONImg.forEach(function(elem){
												if(elem.main == 0){
													let div = '<li><img class="imageStyle" src="../images/'+elem.name+'"></li>';
													$('#images').append($(div))
												}if(elem.main == 1){
													let div = '<li><img class="imageStyle" src="../images/'+elem.name+'"></li>';
													$('#images').append($(div))
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
					<form action="szukaj.php" id="sendForm" method="get">
					<h2 class="center-align">Archiwum</h2>
					<br>
					<div class="row">
						<div class="col s12 m6">
							<h3>Wybierz rok:</h3>
							<div class="input-field col s12">
							    <select id="years" name="year" class="browser-default z-depth-4">
							      <option value="" disabled selected>Rok</option>
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
											    echo "<option value=".$row['year(post_data)'].">".$row['year(post_data)']."</option>";
											}
										}
							      ?>
							    </select>
							  </div>
						</div>
						<div class="col s12 m6">
							<h3>Wybierz miesiąc:</h3>
							<div class="input-field col s12">
							    <select id="months" name="month" class="browser-default z-depth-4">
							      <option value="" disabled selected>Miesiąc</option>
							      <option value="01">Styczeń</option>
							      <option value="02">Luty</option>
							      <option value="03">Marzec</option>
							      <option value="04">Kwiecień</option>
							      <option value="05">Maj</option>
							      <option value="06">Czerwiec</option>
							      <option value="07">Lipiec</option>
							      <option value="08">Sierpień</option>
							      <option value="09">Wrzesień</option>
							      <option value="10">Październik</option>
							      <option value="11">Listopad</option>
							      <option value="12">Grudzień</option>
							    </select>
							  </div>
						</div>
						<div class="col s12 center-align">
							<h3>Wybierz tag:</h3>
							<div class="tagiMain center-align">
								<?php
									$sql = "SELECT * FROM tags";
									if ($conn->connect_error) {
											echo "Error: " . $sql . "<br>" . $conn->error;
										}
										$result = mysqli_query($conn, $sql);
										$data = array();
										if (mysqli_num_rows($result) > 0) {
											while($row = mysqli_fetch_assoc($result)) {
											    ?>
											    	<label>
											    		<input name="tag[]" value="<?php echo $row['tag_id']; ?>" type="checkbox" />
											    		<span class="tag">
											    			<?php
											    				echo $row['tag_name'];
											    			?>
											    		</span>
											   		</label>
											    <?php
											}
										}
								?>
							</div>
						</div>
					</div>



					<button id="send" class="waves-effect waves-light btn right">Szukaj</button>
					<h5 style="text-decoration: underline;"><a href="http://zszsokolka.pl/" target="_blank">Posty z poprzedniej wersji strony</a></h5>
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
								}if(isset($_GET['tag'])){
									$tags = 'FIND_IN_SET("'.$_GET['tag'][0].'", `tags_id`)';
									if(sizeof($_GET['tag'])>=2){
										for ($i=0; $i < sizeof($_GET['tag']); $i++) {
											$tags = $tags.' '.'OR FIND_IN_SET("'.$_GET['tag'][$i].'", `tags_id`)';
										}
									}
									array_push($arr, $tags);
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
									$div = $div.'<a href="szukaj.php?hide=true&id='.$row['post_id'].'">';
									$div = $div.'<div postid="'.$row['post_id'].'" style="background-image: url(../images/brakZdj.jpg);height: 250px;';
									$div = $div.'background-position: center;background-size: cover;"></div>';
									$div = $div.'</a>';
									$div = $div.'<div class="tagi">'.$row['tags_id'].'</div>';
									$div = $div.'</div>';
									$div = $div.'<div class="card-content">';
									$div = $div.'<a class="title card-title activator grey-text text-darken-4" href="szukaj.php?hide=true&id='.$row['post_id'].'">';
									$div = $div.$row['title'];
									$div = $div.'</a>';
									$div = $div.'<p class="data z-depth-1">'.$row['post_data'].'</p>';
									$div = $div.'<div  id="body">';
									$div = $div.'<p>'.$row['body'].'</p>';
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
									console.log(data)
									let JSONtags = JSON.parse(data);
									$('.tagi').each(function(index,elem){
										let tags = $(elem).html();
										let arrTags = tags.split(',');
										$(elem).html("");
										for(let i=1;i<arrTags.length;i++){
											let tagId = arrTags[i]
											$(elem).append('<div id="'+JSONtags[tagId-1].id+'" class="babyTag chip z-depth-2"><a href="#" >'+JSONtags[tagId-1].name+'</a></div>')
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
						$('div[postid="'+JSONpar[0].id+'"]').css('background-image','url(../images/'+JSONpar[0].name+')');
						$('div[postid="'+JSONpar[0].id+'"]').removeAttr('postid')
					}
				})
			});
		}
		searchImg()
	</script>

	<script type="text/javascript" src="../js/viewer.min.js"></script>
	<script type="text/javascript" src="../js/gallery.js"></script>
</body>
</html>