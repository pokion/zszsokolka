function loadImage(id){
	let div = $('h5[postid="'+id+'"]');

	$.post(loadImages,
			{
				postId: id
			},
			function(data,status){
				let JSONimages = JSON.parse(data);
				JSONimages.forEach((elem)=>{
					let appendDiv = `
							<a href="/strona/images/${elem}" data-lightbox="${id}" class="imageStyle">
								<img  src="/strona/images/${elem}">
							</a>
						`;
						div.append(appendDiv);
				})
			})
}