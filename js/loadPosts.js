let curData = null;
	// **/* to jest punkt kontrolny żeby wykryć gdzie jest data
	// &/^ to jest punkt kontrolny żeby wykryć w ostatnim split w którym dokładnie miejscy w tablicy this.onlyDiv jest data
	function addDiv(data){
		let loadButton = '<button onclick="loadPost()" if="loadButton" class="btn waves-effect waves-light">Load<i class="material-icons">autorenew</i></button>';

		let err = data.split("<br>");
		this.onlyDiv = err[1].split("**/*");
		console.log(this.onlyDiv[1].indexOf('&/^'))
		console.log(this.onlyDiv[0].indexOf('&/^'))

		for(let i=0;i<this.onlyDiv.length;i++){
			if(this.onlyDiv[i].indexOf('&/^')> -1){
				let betaData = this.onlyDiv[i].split('&/^');
				let dataWitchoutTime = betaData[0].split(' ')
				curData = dataWitchoutTime[0];
				console.log(curData);
			}else{
				$('.container>.row.content').append(this.onlyDiv[i]);
			}
		}

		/*console.log(this.onlyDiv)
		console.log(this.err);*/


		$('.container>.row.content').append(loadButton);
		addDot();
	}

	function loadPost(){
		$('button').remove();
		$.post('php/loadPosts.php',
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
	$.post('php/loadPosts.php',
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
