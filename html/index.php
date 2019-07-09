<!DOCTYPE html>
<html lang="PL">
<head>
	<title>strona</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<?php
		include_once('includes/header.php');
		$inc = 'index';
	?>
	<link rel="stylesheet" href="../css/startowa.css">
	<style type="text/css">
		.tagi{
			position: absolute;
			display: inline-block;
			bottom: 0px;
			left: 0px;
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
			background-color: white
		}
	</style>
</head>
<body>
	<?php
		include_once('includes/nav.php');
	?>
	<div class="slider">
		<ul class="slides">
			<div class="caption">
				<h3 class="tytul">This is our big Tagline!</h3>
				<h5 class="light grey-text text-lighten-3 tresc">Here's our small slogan.</h5>
			</div>
			<li>
				<img src="http://artbrut.lublin.pl/img/bydlinska/otwarteserce.jpg">
			</li>
			<li>
				<!-- czeba img wstawić -->
			</li>
		</ul>
	</div>
	<div class="container">

		<div class="row" id="main">


		</div>


	</div>
	<!-- end container -->
	<?php
		include_once('includes/footer.php');
	?>
	<script type="text/javascript" src="../js/loadPosts.js"></script>
	<script type="text/javascript">
		let dataPost,send=true;
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


		function searchTag(){
			$.post(searchTags,{},function(data){
				let JSONtags = JSON.parse(data);
				$('.aval').each(function(index,elem){
					let tags = $(elem).html();
					let arrTags = tags.split(',');
					$(elem).html("");
					for(let i=1;i<arrTags.length;i++){
						let tagId = arrTags[i]

						$(elem).append(`<div class="babyTag chip z-depth-2"><a href="#">${JSONtags[tagId-1].name}</a></div>`)
					}
					$(this).removeClass('aval')

				})
			})
		}


		function phpConnection(dataposta){
				$.post(loadPosts,dataposta,function(data){
				let months = ["stycznia",'lutego','marca','kwietnia','maja','czerwca','lipca','sierpnia','września','października','listopada','grudnia'];

				/*console.log(data)*/
				let JSONpar = JSON.parse(data);
				let body;
				let img = 'brakZdj.jpg';
				for(let i=0;i<JSONpar.length;i++){
					if(JSONpar[i].bod.length>257){
						body = JSONpar[i].bod.substring(0,267)+'...';
					}else{
						body = JSONpar[i].bod;
					}
					/*console.log(JSONpar)*/
					dataPost = JSONpar[i].data;
					let date = JSONpar[i].data.split(" ")
					let dateWitchoutHour = date[0].split("-")
					let day = dateWitchoutHour[1]
					/*console.log(dateWitchoutHour)*/
					let div = `
						<div class="col s12 m12 l12 xl6">
							<div class="card">
								<div class="card-image waves-effect waves-block waves-light">
									<a href="szukaj.php?hide=true&id=${JSONpar[i].postId}"><div postid="${JSONpar[i].postId}" style="background-image: url(../images/${img}); height: 250px; background-position: center;background-size: cover;"></div></a>
									<div class="tagi aval">${JSONpar[i].tagsId}</div>
								</div>
									<div class="card-content">

											<a class="title card-title activator grey-text text-darken-4" href="szukaj.php?hide=true&id=${JSONpar[i].postId}">${JSONpar[i].tit}</a>

										<p class="data z-depth-1">${dateWitchoutHour[2]} ${months[day-1]} ${dateWitchoutHour[0]} r.</p>
										<div  class="body">
											<p>${body}</p>
										</div>
									</div>
									<div class="card-action">
										<a href="szukaj.php?hide=true&id=${JSONpar[i].postId}">Czytaj dalej</a>
									</div>
							</div>
						</div>`;
						$('#main').append($(div));
				}
				searchImg()
				searchTag()
				send = true;
				$(window).scroll(function(e){
					let distanceFromBottom = $(document).height() - $(window).height() - $(document).scrollTop();

					if(distanceFromBottom<=200&&send==true){
						send = false;
						phpConnection({date:dataPost})
					}
				})
			})
		}
		phpConnection()
	</script>

</body>
</html>
