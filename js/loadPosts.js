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
let controlValue = null;
	function loadPost(images,jsOn,main){
		console.log(jsOn)
		if(main){

		}else{
			let bd;

				
				if(jsOn.bod.length>270){
					bd = jsOn.bod.substring(0,270)+'...';
				}else{
					bd = jsOn.bod;
				}
				console.log(bd)

				let img = images || 'brakZdj.jpg';

				let div = $(`
						<div class="col s12 m12 6 l12 xl6">
							<div class="card">
								<div class="card-image waves-effect waves-block waves-light">
									<div style="background-image: url(../images/${img}); height: 250px; background-position: center;background-size: cover;"></div>
								</div>
								<div>${jsOn.tagsId}</div>
								<div class="card-content">
									<span id="title" class="truncate card-title activator grey-text text-darken-4">
										${jsOn.tit}
									</span>
									<div  id="body">
										<p">${bd}</p>
									</div>
								</div>
								<div class="card-action">
									<a href="#">Czytaj dalej</a>
								</div>
							</div>
						</div>
							`);
				controlValue = jsOn.imgGroup;
				$('#main').append(div)
				
				console.log(jsOn)

			
			
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
