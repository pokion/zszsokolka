$(document).ready(function(){
let allImages = [];
	$(document).on('click','.rem', function(){
		let remButton = $(this.firstChild)[0];
		let imageId = $(remButton).attr('image');
		let card = $(remButton)[0].parentNode.offsetParent;
		allImages.forEach((elem,index)=>{
			if(elem.id == imageId){
				allImages.splice(index,1)
			}
		})

		card.remove();

		$.post(saveImages,
				{
					remove: true,
					id: imageId
				},(data)=>{
					
				})
	})


	function uploadImages(e){
		let $inputImages = $('#images');
		for(let i=0;i<$inputImages[0].files.length;i++){
			let reader = new FileReader();
				reader.onload = function(e){
					$.post(saveImages,
							{
								result: e.target.result,
								name: $inputImages[0].files[i].name,
							},(data,status)=>{
								
								let imageJSON = JSON.parse(data);
								
								let $imageCard = $(`
									<div class="card">
										<img src="../images/${imageJSON.name}">
										<div class="card-panel grey lighten-5 z-depth-1 center-align">
											<p class="truncate">${imageJSON.name}</p>
										</div>
										<a class="btn-floating btn-small waves-effect waves-light rem red"><i class="material-icons" image="${imageJSON.id}">remove_circle_outline</i></a>
									</div>
					  			 `);
								$('#imagesBox .row').append($imageCard);
								allImages.push({name:imageJSON.name,id:imageJSON.id,main:false,position:null});
							})
				}
			reader.readAsDataURL($inputImages[0].files[i])
		}
	}


	function mainImg(){
		let $inputImages = $('#slideadd');
		let imageId = $('.sliderCreator').attr('image');

		for(let i=0;i<$inputImages.length;i++){
			let reader = new FileReader();
				reader.onload = function(e){
					$.post(saveImages,
							{
								id:imageId,
								result: e.target.result,
								name: $inputImages[0].files[i].name,
								mainImage: true,
								position: null
							},(data)=>{
								console.log(data)
								let imageJSON = JSON.parse(data);
								$('.sliderCreator').attr('image',imageJSON.id);
								$('.sliderCreator').css('background-image','url(../images/'+imageJSON.name+')');
								allImages.push({name:imageJSON.name,id:imageJSON.id,main:true,position:null});

								allImages.forEach((elem,index)=>{
									if(elem.id == imageId){
										allImages.splice(index,1)
									}
								})
							})
				}
			reader.readAsDataURL($inputImages[0].files[i]);
		}
	}

	function preview(){
		let tags = [];
		let mainImg = $('.mainimg');
		let title = $('h2.replace');
		let body = $('p.replace');
		title.html($('input[name="title"]').val())
		body.html($('textarea[name="body"]').val())


		$('.chip').each((index,element)=>{
			let tag = $(element)[0].childNodes[0];
			tags.push(tag);
		})
		allImages.forEach((elem,index)=>{
			if(elem.main == true){
				mainImg.attr('src','../images/'+elem.name);
			}else{
				let divLightbox = $(`<a href="../images/${elem.name}" data-lightbox="roadtrip" class="imageStyle"><img src="../images/${elem.name}" /></a>`)
				body.append(divLightbox)
			}
		})
		
	}

	//wysyła do php wszystkie dane

	function sendToPhp(){
		let tags = [];
		let title,body;
		$('.chip').each((index,element)=>{
			let tag = $(element)[0].childNodes[0];
			console.log(tag)
			tags.push({tg:tag.data});
		});

		allImages.forEach((elem)=>{
			if(elem.main === true){
				let pos = $('.sliderCreator').css('background-position');

				elem.position = pos
			}
		})

		title = $('input[name="title"]').val();
		body = $('textarea[name="body"]').val();
		console.log(JSON.stringify(tags))
		$.post(createPosts,
				{
					tg: JSON.stringify(tags),
					images: JSON.stringify(allImages),
					tit: title,
					bod: body
				},(data)=>{
					console.log(data)
				})

	}


	/*upload images*/
	$('#upload').click(()=>{
		$('#images').click();
	});
	$('#images').change((e)=>{
		uploadImages(e);
	});
	$('.slideAdd').click(()=>{
		$('#slideadd').click();
	});
	$('#slideadd').change((e)=>{
		mainImg();
	});
	$('#preview').click(()=>{
		preview();
	});
	$('button[type="submit"]').click(()=>{
		sendToPhp()
	})
});
