$(document).ready(function()	{
		$("select[name=year]").on('change', function(){
			$.ajax({
    		url : 'getyear.php',
        method : "post",
        contentType : "application/json",
				dataType : "json",
        data : {
					year : $(this).find('option:selected').val()
				}
})
			.done(function(data) {
		    console.log(data); //dostaliśmy odpowiedź z serwera, wypisujemy ją
			})
			.fail(function() {
			    alert("Wystąpił błąd w połączeniu");
			})
			.always(function(data) {
			    console.log('Nihil novi' + data);
});
});
});
