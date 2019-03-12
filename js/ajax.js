$(document).ready(function()	{
	//specifaing actual year in slect (hope it can be solved the other way)
	var rok = $(this).find('option:selected').text();
	$('.rok').text(rok);

		$("select[name=year]").on('change', function(){
			//var which contains year choosen in <select> (second time)
			var rok = $(this).find('option:selected').text();
			// sets current year into span
			$('.rok').text(rok);
			// ajax connection
			$.ajax({
    		url : 'getyear.php',
        method : "POST",
        data : {
					year : rok
				},
				dataType : "json",
				success: function(data){
					let placeholder = $('#placeholder');
					let content = "<div class=\"carousel\">";

					$.each(data, function(index, element){
						content += "<a class=\"carousel-item\"><span class=\"podpis\">";
						content += data[index].position + "<br> ";
						content += data[index].position2 + "<br> ";
						content += data[index].position3 + "</span><img src=";
						content += data[index].photo_path + " alt=\"Brak zdjęcia :'(\"><span class=\"podpis\">";
						content += data[index].degree + " ";
						content += data[index].name += "</span></a>";;
					})
					content += '</div>';
					placeholder.innerHTML = content;
					console.log(content);
				}
})
			.fail(function() {
			    alert("Wystąpił błąd w połączeniu");
			})
});
});
