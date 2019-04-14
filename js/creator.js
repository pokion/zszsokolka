$(document).ready(function(){
let allImages = [];
	$(document).on('click','.rem', function(){
		let remButton = $(this.firstChild)[0];
		let imageId = $(remButton).attr('image');
		let card = $(remButton)[0].parentNode.offsetParent;
		allImages.forEach((elem,index)=>{
			if(elem.id == imageId){
				console.log(elem,index,'usunięte')
				allImages.splice(index,1)
			}
		})
		console.log(allImages)

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
								allImages.push({name:imageJSON.name,id:imageJSON.id,main:false});
								console.log(allImages)
								console.log('id posta :'+imageJSON.id,"nazwa posta :"+imageJSON.name)
							})
				}
			reader.readAsDataURL($inputImages[0].files[i])
		}
	}


	function mainImg(){
		console.log('cscsc')
		let $inputImages = $('#slideadd');
		console.log($inputImages)

		for(let i=0;i<$inputImages.length;i++){
			let reader = new FileReader();
				reader.onload = function(e){
					$.post(saveImages,
							{
								result: e.target.result,
								name: $inputImages[0].files[i].name,
								mainImage: true,
								position: null
							},(data)=>{
								console.log(data)
								let imageJSON = JSON.parse(data);
								$('.sliderCreator').attr('image',imageJSON.id);
								$('.sliderCreator').css('background-image','url(../images/'+imageJSON.name+')');
								allImages.push({name:imageJSON.name,id:imageJSON.id,main:true});
								console.log(allImages)
							})
				}
			reader.readAsDataURL($inputImages[0].files[i]);
		}
	}

	function preview(){
		let tags = [];

		$('.chip').each((index,element)=>{
			let tag = $(element)[0].childNodes[0];
			tags.push(tag);
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
});
