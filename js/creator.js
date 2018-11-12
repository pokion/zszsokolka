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
				M.toast({html: data})
			}
		);
	})

})