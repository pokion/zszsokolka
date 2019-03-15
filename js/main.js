$(document).ready(function(){
	M.AutoInit();
	$('.sidenav').sidenav();
	$('.collapsible').collapsible();
	$('.modal').modal();
	$('select').formSelect();
	$('.materialboxed').materialbox();
	$('.carousel-slider').carousel({
		shift : 380,
		duration : 150
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
