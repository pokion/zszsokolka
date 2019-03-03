let images = [];

function readURL(input) {
	console.log($('input[type=file]').prop('files'),input.target.files);
	if (input.target.files && input.target.files[0]) {
		for(let i=0;i<input.target.files.length;i++){
			var reader = new FileReader();

		    reader.onload = function(e) {
		    	console.log(e)
		    	images.push({name: input.target.files[i].name,
		    				 data: e.target.result});
		    	let $img = $(`<div class="card">
								<img src="${e.target.result}">
								<div class="card-panel grey lighten-5 z-depth-1 center-align">
									<p class="truncate">${input.target.files[i].name}</p>
								</div>
								<a class="btn-floating btn-small waves-effect waves-light rem red" image="${input.target.files[i].name}"><i class="material-icons">remove_circle_outline</i></a>
							</div>
						`);
		    	
		    	$('#imagesBox .row').append($img);
				/*remove img*/
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
				/*remove img*/
			}

		    reader.readAsDataURL(input.target.files[i]);
		    
		}
	}
}


$(document).ready(function(){
	$('button').click(function(){
		let tit = $('input[name=title]').val();
		let bod = $('textarea[name=body]').val();
		$.post(createPosts,
			{
				title: tit,
				body: bod
			},
			function(data,status){
				M.toast({html: data});
			}
		);
	$.post(saveImages,
		{
			img: images	
		},
		function(data,status){
			/*M.toast({html: data});*/
			console.log(data,status)
		}
	)

	})

	/*preview the allpost*/
	$('#preview').click(()=>{

		let title = $('input[name=title]').val();
		let body = $('textarea[name=body]').val();

		$('h3.replace').replaceWith('<h3 class="letterSpac replace">'+ title +'</h3>');
		$('p.replace').replaceWith('<p class="right-align replace">aktualna data</p>');
		$('h5.replace').replaceWith('<h5 class="letterSpac border replace">'+ body +'</h5>');
		images.forEach((elem)=>{
			$('h5.replace').append($(`<a href="${elem.data}" data-lightbox="roadtrip" class="imageStyle"><img src="${elem.data}" /></a>`))
		})
	})

	/*upload images*/
	$('#upload').click(()=>{
		$('input[type=file]').click();
	});
	$('input[name=uploadImage]').change((e)=>{
		readURL(e);
	});

})