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
		#helperForMobile{
			background-color: red;
			position: fixed;
			top: 0;
			left: 0;
			height: 100vh;
			width: 100vw;
			visibility: hidden;
			z-index: -99999;
		}
	</style>
</head>
<body>
	<?php
		include_once('includes/nav.php');
	?>
	<!-- <div class="slider">
		<ul class="slides">
			<div class="caption">
				<h3 class="tytul">ZSZ Sokółka</h3>
				<h5 class="light grey-text text-lighten-3 tresc">Zmieniamy się na lepsze!</h5>
			</div>
			<li>
				<img src="http://artbrut.lublin.pl/img/bydlinska/otwarteserce.jpg">
			</li>
			<li>
				<img src="http://zszsokolka.pl/zdj_klasowe2016_2017/ZSZ_all.jpg">
			</li>
			<li>
				<img src="http://zszsokolka.pl/zdj_klasowe2016_2017/ZSZ_all.jpg">
			</li>
		</ul>
	</div> -->
	<br><br>
	<div class="container main">

		<div class="row" id="main">


		</div>


	</div>
	<div id="helperForMobile">asd</div>
	<!-- end container -->
	<?php
		include_once('includes/footer.php');
	?>
	<script type="text/javascript" src="../js/loadPosts.js"></script>
	<script type="text/javascript">
		let limit  = [0,4];
		let dataPost;
		let send = 0;
		let bnt = false;
		let sendCount = 1;
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
						/*console.log(tagId,JSONtags[tagId-1])*/
						/*console.log(JSONtags)*/
						$(elem).append(`<div class="babyTag chip z-depth-2"><a href="szukaj.php?tag%5B%5D=${JSONtags[tagId-1].id}">${JSONtags[tagId-1].name}</a></div>`)
					}
					$(this).removeClass('aval')

				})
			})
		}


		function phpConnection(dataposta){
				$.post(loadPosts,dataposta,function(data){
					/*console.log('dzala')*/
					
					limit[0]+=4;
					dataPost = limit[0]+',4';

				let months = ["stycznia",'lutego','marca','kwietnia','maja','czerwca','lipca','sierpnia','września','października','listopada','grudnia'];

				let JSONpar = JSON.parse(data);
				let body;
				let img = 'brakZdj.jpg';
				for(let i=0;i<JSONpar.length;i++){

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
												<div>${JSONpar[i].bod}</div>
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
			})
		}
		phpConnection()

		$(document).on('click','.phpload', function(){
			phpConnection({date:dataPost})
			$('.phpload').remove()
			$(window).scrollTop($(window).scrollTop()-2)
			send = 0
			bnt = false
		})


		$(window).scroll(function(){

		    if($(window).scrollTop() == $(document).height() - $('#helperForMobile').height() && send<sendCount){
		    	console.log(limit)
		       	phpConnection({date:dataPost})
		       	console.log(limit,bnt)
		       	send++
		       	console.log(send,bnt)
		    }else if(send === sendCount && bnt === false){
		    	let button = '<a class="waves-effect waves-light btn-large phpload">Zaladuj posty</a>';
		    	$('.main').append($(button))
		    	bnt = true
		    }
		});
	</script>

</body>
</html>