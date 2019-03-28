function loadImage(id){
	let div = $('h5[postid="'+id+'"]');

	$.post(loadImages,
			{
				postId: id
			},
			function(data,status){
				if(data){
					let JSONimages = JSON.parse(data);
					JSONimages.forEach((elem)=>{
						let appendDiv = `
								<a href="/StronaxDszko-y/images/${elem}" data-lightbox="${id}" class="imageStyle">
									<img  src="/StronaxDszko-y/images/${elem}">
								</a>
							`;
							div.append(appendDiv);
					})
				}
				
			})
}