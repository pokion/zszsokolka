function readURL(input) {
	console.log(input.target.files)
	if (input.target.files && input.target.files[0]) {
		for(let i=0;i<input.target.files.length;i++){
			var reader = new FileReader();

		    reader.onload = function(e) {
		    	let imageRep = $(`<a href="${e.target.result}" data-lightbox="roadtrip" class="imageStyle"><img src="${e.target.result}" /></a>`);
		    	let $img = $(`<div class="card">
								<img src="${e.target.result}">
								<div class="card-panel grey lighten-5 z-depth-1 center-align">
									<p class="truncate">${input.target.files[i].name}</p>
								</div>
								<a class="btn-floating btn-small waves-effect waves-light rem red"><i class="material-icons">remove_circle_outline</i></a>
							</div>
						`);
		    	
		    	$('#imagesBox .row').append($img);
		    	$('div .replace').append(imageRep);
				/*remove img*/
		    	
				/*remove img*/
			}

		    reader.readAsDataURL(input.target.files[i]);
		}
	}
}

	$('.rem').click((e)=>{
		$(this).parent('.card').remove();
	})



$(document).ready(function(){
	$('button').click(function(){
		let tit = $('input[name=title]').val();
		let bod = $('textarea[name=body]').val();
		$.post('/strona/php/createPost.php',
			{
				title: tit,
				body: bod
			},
			function(data,status){
				M.toast({html: data});
			}
		);
	})

	/*preview the allpost*/
	$('#preview').click(()=>{

		let title = $('input[name=title]').val();
		let body = $('textarea[name=body]').val();

		$('h3.replace').replaceWith('<h3 class="letterSpac replace">'+ title +'</h3>');
		$('p.replace').replaceWith('<p class="right-align replace">aktualna data</p>');
		$('h5.replace').replaceWith('<h5 class="letterSpac border replace">'+ body +'</h5>');
	})

	/*upload images*/
	$('#upload').click(()=>{
		$('input[type=file]').click();
	});
	$('input[name=uploadImage]').change((e)=>{
		readURL(e);
	});

})