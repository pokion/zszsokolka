<!DOCTYPE html>
<html lang="PL">
<head>
	<title>strona</title>

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
				<!-- czeba img wstawić -->
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
</div>
	<!-- end container -->
	<?php
		include_once('includes/footer.php');
	?>
	<script type="text/javascript" src="../js/loadPosts.js"></script>
	<script type="text/javascript">
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
		}		


		$.post(loadPosts,{},function(data){
			let month = ['styczeń','luty','marzec','kwiecień','maj','czerwiec','lipiec','sierpień','wrzesień','październik','listopad','grudzień'];


			let JSONpar = JSON.parse(data);
			let body;
			let img = 'brakZdj.jpg';
			for(let i=0;i<JSONpar.length;i++){
				if(JSONpar[i].bod.length>267){
					body = JSONpar[i].bod.substring(0,267)+'...';
				}else{
					body = JSONpar[i].bod;
				}
				console.log(JSONpar)
				let div = `
					<div class="col s12 m12 6 l12 xl6">
						<div class="card">
							<div class="card-image waves-effect waves-block waves-light">
								<div postid="${JSONpar[i].postId}" style="background-image: url(../images/${img}); height: 250px; background-position: center;background-size: cover;"></div>
								<div class="tagi">${JSONpar[i].tagsId}</div>
							</div>
								<div class="card-content">
									<span id="title" class="truncate card-title activator grey-text text-darken-4">
										${JSONpar[i].tit}
									</span>
									<div  id="body">
										<p>${body}</p>
									</div>
								</div>
								<div class="card-action">
									<a href="#">Czytaj dalej</a>
								</div>
						</div>
					</div>`;
					$('#main').append($(div));
			}
			searchImg()
			searchTag()
		})
	</script>

</body>
</html>
