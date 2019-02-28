$(document).ready(function(){
	M.AutoInit();

	$('.sidenav').sidenav();
	$('.collapsible').collapsible();
	$('.modal').modal();
	$('.materialboxed').materialbox();
	$('.carousel').carousel({
		numVisible: 20
	});

	let instances = [];

	$('.carousel').each(function (index,element){
		instances.push(M.Carousel.getInstance(element));
	})
	instances.forEach((elem,index)=>{
		$('a[click=to]').click(()=>{
			elem.set(7)
		})
		console.log(index+' gotowy')
	})


	addDot();
})
function addDot(){
		let ul = jQuery('.card ul').addClass(()=>{
			return 'browser-default';
		});

	}
