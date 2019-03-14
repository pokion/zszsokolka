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
		    		url : 'getyear.php',
		        method : "POST",
		        data : {
							year : rok
						},
						dataType : "json"
					})

			//Jeśli zadziała:
			.done(function(data){
				let placeholder = $('.placeholder');
				let content = "<div class=\"carousel\">";

				$.each(data, function(index, element){
					content +=  "<a class=\"carousel-item\"><span class=\"podpis\">"+data[index].position + "<br> ";
					if (data[index].position2 != null){
						content += data[index].position2 + "<br> ";
					}
					if (data[index].position3 != null) {
						content += data[index].position3 + "</span><img src=";
					}else{
						content +=  "</span><img src=";
					}
					content += data[index].photo_path + " alt=\"Brak zdjęcia :'(\"><span class=\"podpis\">";
					content += data[index].degree + " ";
					content += data[index].name;
					content += "</span></a>";
				})
				content += "</div>";
				placeholder.html(content);
				$('.carousel').carousel({
					numVisible : 20
				});

				firstTime = false;
			})

			//Jeśli nie zadziała
			.fail(function() {
					alert("Wystąpił błąd w połączeniu");
			})
	}
})
