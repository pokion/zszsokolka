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
		    		url : 'klasy_getyear.php',
		        method : "POST",
		        data : {
							year : rok
						},
						dataType : "json"
					})

			//Jeśli zadziała:
			.done(function(data){
				let placeholder = $('.placeholder');
				let content = "<div class=\"carousel carousel-slider klasy center-align\">";

				$.each(data, function(index, element){
					content +=  "<a class=\"carousel-item \">"
					content += "<img src=";
					content += data[index].photo_path + " alt=\"Brak zdjęcia :'(\">";
					content += "Kierunek: " + data[index].kierunek + "<br>";
					content += "Wychowawaca: " + data[index].wychowawca + "<br> ";
					content += "Klasa: " + data[index].nazwa + "<br> ";
					content += "</a>";
				})
				content += "</div>";
				placeholder.html(content);
				$('.carousel.carousel-slider').carousel({
					fullWidth: true
				});
					$('.carousel').hide().fadeIn("slow")
						firstTime = false;
				})

			//Jeśli nie zadziała
			.fail(function() {
					alert("Wystąpił błąd w połączeniu");
			})
	}
})