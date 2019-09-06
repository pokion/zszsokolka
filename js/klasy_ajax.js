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
				let placeholder = $('#placeholder');
				let content = "<div id='images'>";

				$.each(data, function(index, element){
					if (!element.photo_path) {
						content +=  `<img class="klasa_img" src="../img/static/default.png"
														alt="Brak zdjęcia" data-tooltip="I am a tooltip">`
					} else {
						content +=  `<img class="klasa_img tooltipped" src="../images/${data[index].photo_path}"
														alt="">`
					}
				})
				content += "</div>";
				placeholder.html(content);
				const viewer = new Viewer(document.getElementById('images'), {
				inline: true,
				viewed() {
					viewer.zoomTo(1);
				},
			});
				})

			//Jeśli nie zadziała
			.fail(function() {
					alert("Wystąpił błąd w połączeniu. Spróbuj ponownie później");
			})
	}
})
// info do wypisania
// Kierunek: ${data[index].kierunek} |
// Klasa: ${data[index].nazwa} |
// Wychowawca: ${data[index].wychowawca} |
// Rok: ${data[index].rok}
