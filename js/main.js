$(document).ready(function(){
	M.AutoInit();
	$('.sidenav').sidenav();
	$('.collapsible').collapsible();
	$('.modal').modal();
	$('select').formSelect();
	$('.slider').slider();
	$('.slider').slider();
	$('.parallax').parallax();
	$('.materialboxed').materialbox();
	$('.carousel-slider').carousel({
		shift : 380,
		duration : 150
	});
	$(".nav").dropdown({
		inDuration: 300,
    outDuration: 225,
    hover: true, // Activate on hover
		coverTrigger: false,
    alignment: 'right' // Displays dropdown with edge aligned to the left of button
	});



  $(".top").click(function(){
    $(".sliderCreator").css({"background-position": "top"});
  });
	$(".center").click(function(){
		$(".sliderCreator").css({"background-position": "center"});
	});
	$(".bottom").click(function(){
		$(".sliderCreator").css({"background-position": "bottom"});
	});

	$('textarea[name=body]').keyup(function () {
	  $('.tresc').text($(this).val());
	});

	$('input[name=title]').keyup(function () {
		$('.tytul').text($(this).val());
	});
	addDot();
	autoplay();
})
function addDot(){
		let ul = jQuery('.card ul').addClass(()=>{
			return 'browser-default';
		});

	}

	function autoplay() {
	    $('.carousel-slider').carousel('next');
	    setTimeout(autoplay, 6000);
	}
