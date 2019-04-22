let curData = null;

	function loadImg(json,onlyMain){
		let JSONPost = JSON.parse(json);
		
		JSONPost.forEach((data,index)=>{
			$.post(loadImages,
				{
					groupImg:data.imgGroup,
					onlyMainImg:onlyMain
				},
				function(data){
					loadPost(data,JSONPost[index],onlyMain)
				})
		})
	}

	function loadPost(images,jsOn,main){

		if(main){

		}else{
			console.log(jsOn)
			let bd = jsOn.body.substring(0,270);
			console.log(bd)

			let div = $(`
					<div class="col s12 m12 6 l12 xl6">
						<div class="card">
							<div class="card-image waves-effect waves-block waves-light">
								<div style="background-image: url(../images/${images}); height: 250px; background-position: center;background-size: cover;"></div>
							</div>
							<div class="card-content">
								<span class="card-title activator grey-text text-darken-4">
									${jsOn.title}
								</span>
								<p>${bd}...</p>
							</div>
							<div class="card-action">
								<a href="#">Czytaj dalej</a>
							</div>
						</div>
					</div>
						`);

			$('#main').append(div)
		}
	}

$(document).ready(function(){
	$.post(loadPosts,
			{

			},
			function(data,status){
				if(status==='success'){
					loadImg(data,false)
				}else{
					console.log(status);
				}
			}
		);
})
