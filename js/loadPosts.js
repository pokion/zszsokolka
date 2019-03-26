let curData = null;
	function addDiv(data){
		let loadButton = '<button onclick="loadPost()" if="loadButton" class="btn waves-effect waves-light">Load<i class="material-icons">autorenew</i></button>';
		if(data){
			let allJson = data.split('|');

			allJson.forEach((elem)=>{
				if(elem){
					let json = JSON.parse(elem);
					let div = $(
					`
						<div class="row">
							<div class="col s12 card">
								<h3 class="letterSpac">${json.title}</h3>
								<p class="right-align">${json.data}</p>
							
								<h5 class="letterSpac border" postid="${json.postID}">${json.body}</h5>
							</div>
						</div>
					`);
					$('.content').append(div);
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
						addDiv(data);
					}else{
						console.log(status);
					}
			}
		);
})
