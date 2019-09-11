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
					if (!element.photo_path || element.photo_path == 'NIE MA') {
						content +=  '<img class="klasa_img imageStyle tooltipped" src="../img/static/default.png"'
						content +=								'alt="Brak zdjęcia" data-position="left" data-tooltip="Kierunek:'+data[index].kierunek+'<br>'
						content +=																'Klasa:'+data[index].nazwa+'<br>'
						content +=																'Wychowawca:'+data[index].wychowawca+'<br>'
						content +=																'Rok:'+data[index].rok+'">';
					} else {
						content +=  '<img class="klasa_img imageStyle tooltipped" src="'+data[index].photo_path+'"'
						content +=								'alt="Brak zdjęcia" data-position="left" data-tooltip="Kierunek:'+data[index].kierunek+'<br>'
						content +=																'Klasa:'+data[index].nazwa+'<br>'
						content +=																'Wychowawca:'+data[index].wychowawca+'<br>'
						content +=																'Rok:'+data[index].rok+'">';
					}
				})
				content += "</div>";
				placeholder.html(content);
				const viewer = new Viewer(document.getElementById('images'));
				$('.tooltipped').tooltip();
				})

			//Jeśli nie zadziała
			.fail(function() {
					alert("Wystąpił błąd w połączeniu. Spróbuj ponownie później");
			})
	}
})