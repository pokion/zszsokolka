$(document).ready(function(){

	function uploadImages(e){
		let $inputImages = $('#images');
		for(let i=0;i<$inputImages[0].files.length;i++){
			let reader = new FileReader();
				reader.onload = function(e){
					$.post(saveImages,
							{
								result: e.target.result,
								name: $inputImages[0].files[i].name
							},(data,status)=>{
								let imageJSON = JSON.parse(data);
								console.log(imageJSON.name)
								let $imageCard = $(`
									<div class="card">
										<img src="../images/${imageJSON.name}">
										<div class="card-panel grey lighten-5 z-depth-1 center-align">
											<p class="truncate">${imageJSON.name}</p>
										</div>
										<a class="btn-floating btn-small waves-effect waves-light rem red" image="${imageJSON.id}"><i class="material-icons">remove_circle_outline</i></a>
									</div>
					  			 `);
								$('#imagesBox .row').append($imageCard);
							})
				}
			reader.readAsDataURL($inputImages[0].files[i])
		}
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
	})
	$('#slideadd').change((e)=>{
		mainImg(e);
	})
});
