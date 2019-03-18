function loadImage(images,id){
	let div = $('h5[postid="'+id+'"]');

	images.forEach(elem =>{
		if(elem){
			$.post(loadImages,
			{
				idImage: elem
			},
				function(data,status){
					if(status==='success'){
						let appendDiv = `
							<a href="/strona/images/${data}" data-lightbox="${id}" class="imageStyle">
								<img  src="/strona/images/${data}">
							</a>
						`;
						div.append(appendDiv);
						console.log(appendDiv,div.prevObject)
					}else{
						console.log(status);
					}
				}
			);

		}//if end
	})
}