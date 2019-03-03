$(document).ready(function(){
	M.AutoInit();

	$('.sidenav').sidenav();
	$('.collapsible').collapsible();
	$('.modal').modal();
	$('.materialboxed').materialbox();


	addDot();
})
function addDot(){
		let ul = jQuery('.card ul').addClass(()=>{
			return 'browser-default';
		});

	}
