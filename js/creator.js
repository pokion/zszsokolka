$(document).ready(function(){
let images = [];

function readURL(input) {
	let $inputImages = $('input[type=file]');
	for(let i=0 ;i<$inputImages[0].files.length;i++){
		images.push($inputImages[0].files[i]);
	}
	console.log(images);
	imagesCard(images,true);
}

function imagesCard(input,addImage){
	for(let i=0;i<input.length;i++){
		let reader = new FileReader();
		console.log('asd')
			reader.onload = function(e){

				if(addImage == true){
					let $imageCard = $(`
							<div class="card">
								<img src="${e.target.result}">
								<div class="card-panel grey lighten-5 z-depth-1 center-align">
									<p class="truncate">${images[i].name}</p>
								</div>
								<a class="btn-floating btn-small waves-effect waves-light rem red" image="${images[i].name}"><i class="material-icons">remove_circle_outline</i></a>
							</div>
					  			 `);
					$('#imagesBox .row').append($imageCard);
				}
				

					$('h5.replace').append($(`<a href="${e.target.result}" data-lightbox="roadtrip" class="imageStyle"><img src="${e.target.result}" /></a>`));

				jQuery('.rem').click((e)=>{
					let nameImg = $(e.currentTarget).attr('image');
					images.forEach((elem,index)=>{
						if(elem.name == nameImg){
							images.splice(index,1);
							return false;
						}
					})
					$(e.currentTarget).parent().remove();
				})
			}
			reader.readAsDataURL(input[i]);
	}
	
}



	$('button').click(function(){
		let formData = new FormData();
		formData.append('file',images)
		let tit = $('input[name=title]').val();
		let bod = $('textarea[name=body]').val();
		$.ajax({
			url: saveImages,
			type: 'POST',
			xhr: function(){
				let myXhr = $.ajaxSettings.xhr();
				return myXhr;
			},
			success: function(data){
				console.log('Data uploaded: '+data)
			},
			data: formData,
			cache: false,
			contentType: false,
			processData: false,
			enctype: "multipart/form-data"
		});
		$.post(createPosts,
			{
				title: tit,
				body: bod
			},
			function(data,status){
				M.toast({html: data});
			}
		);
	});

	/*preview the allpost*/
	$('#preview').click(()=>{

		let title = $('input[name=title]').val();
		let body = $('textarea[name=body]').val();

		$('h3.replace').replaceWith('<h3 class="letterSpac replace">'+ title +'</h3>');
		$('p.replace').replaceWith('<p class="right-align replace">aktualna data</p>');
		$('h5.replace').replaceWith('<h5 class="letterSpac border replace">'+ body +'</h5>');
		imagesCard(images,'h5.replace',true)
	})

	/*upload images*/
	$('#upload').click(()=>{
		$('input[type=file]').click();
	});
	$('input[type=file]').change((e)=>{
		readURL(e);
	});

});