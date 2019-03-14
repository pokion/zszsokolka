let curData = null;
	function addDiv(data){
		console.log(data);
		let loadButton = '<button onclick="loadPost()" if="loadButton" class="btn waves-effect waves-light">Load<i class="material-icons">autorenew</i></button>';
		let json = JSON.parse(data)
		console.log(json)


		$('.container>.row.content').append(loadButton);
	}

	function loadPost(){
		$('button').remove();
		$.post(loadPosts,
				{
					date: curData
				},
				function(data,status){
					if(status==='success'){
						//console.log(data)
						console.log('powinno załadować')
							addDiv(data);
						}else{
							console.log(status);
						}
				}
			);
	}

$(document).ready(function(){
	$.post(loadPosts,
			{

			},
			function(data,status){
				if(status==='success'){
					//console.log(data)
						addDiv(data);
					}else{
						console.log(status);
					}
			}
		);
})
