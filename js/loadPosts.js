let curData = null;
	function addDiv(data){
		let loadButton = '<button onclick="loadPost()" if="loadButton" class="btn waves-effect waves-light">Load<i class="material-icons">autorenew</i></button>';
		if(data){
			let allJson = data.split('|');
			console.log(allJson)
			allJson.forEach((elem)=>{
				if(elem){
					let json = JSON.parse(elem);
					let div = $(
					`

							<div class="col s12 m6 l6 xl4 card">
								<h3 class="letterSpac">${json.title}</h3>
								<h5 class="letterSpac truncate">${json.body}</h5>
							</div>

					`);
					$('.content>.row').append(div);
					curData = json.data.split(' ');
					if(json.postID){
						loadImage(json.postID);
					}
					
				}
			})
		}
		


		$('.container>.row.content').append(loadButton);
	}

	function loadPost(){
		$('button').remove();
		$.post(loadPosts,
				{
					date: curData[0]
				},
				function(data,status){
					if(status==='success'){
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
						/*addDiv(data);*/
					}else{
						console.log(status);
					}
			}
		);
})
