$(document).ready(function()	{
	let firstTime = true;
	loadCarousel();
		$("select[name=year]").on('change', loadCarousel);

function loadCarousel(){
	let rok

			if(firstTime===true){
				rok = $('select[name=year]').find('option:selected').text();
				$('.rok').text(rok);
			}else if(firstTime===false){
				//var which contains year choosen in <select> (second time)
				rok =$(this).find('option:selected').text();
				// sets current year into span
				$('.rok').text(rok);
				// ajax connection
			}
			$.ajax({
		    		url : 'samorzad_getyear.php',
		        method : "POST",
		        data : {
							year : rok
						},
						dataType : "json"
					})

			//Jeśli zadziała:
			.done(function(data){
				let placeholder = $('.tutajWstaw');
				let content = "";

				$.each(data, function(index, element){
					if(data[index].stanowisko != data[index-1].stanowisko){  //intuicyjnie niedziałający kod :<
						content +=  "<div class=\"data[index].stanowisko\">";
						content += "Imie:";
						content += data[index].name;
						content += "<br>";
						content += "Klasa:";
						content += data[index].klasa;
						content += "<br>";
					}else{
						content += "Imie:";
						content += data[index].name;
						content += "<br>";
						content += "Klasa:";
						content += data[index].klasa;
						content += "<br>";
					}

				})
				content += "</div></div>";
				placeholder.html(content);
				})

			//Jeśli nie zadziała
			.fail(function() {
					alert("Wystąpił błąd w połączeniu");
			})
	}
})
