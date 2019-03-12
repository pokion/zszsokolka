$(document).ready(function(){
	M.AutoInit();
	$('.sidenav').sidenav();
	$('.collapsible').collapsible();
	$('.modal').modal();
	$('select').formSelect();
	$('.materialboxed').materialbox();
	$('.carousel').carousel({
		numVisible: 16
	});
	$('.carousel.carousel-slider').carousel({
		fullWidth: true,
		indicators: true
	});

	addDot();
})
function addDot(){
		let ul = jQuery('.card ul').addClass(()=>{
			return 'browser-default';
		});

	}
