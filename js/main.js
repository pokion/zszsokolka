$(document).ready(function(){
	M.AutoInit();

	$('.sidenav').sidenav();
	$('.collapsible').collapsible();
	$('.modal').modal();
	$('.materialboxed').materialbox();
	$('.carousel').carousel({
		numVisible: 20
	});

	let init = M.Carousel.getInstance($('.carousel')[0]);

	$('button[click=to]').each((index,elem)=>{
			
		$(elem).click(()=>{
			let val = $(this.activeElement).val();
			console.log(val)
			init.set(val)
		})
	})

	


	addDot();
})
function addDot(){
		let ul = jQuery('.card ul').addClass(()=>{
			return 'browser-default';
		});

	}
