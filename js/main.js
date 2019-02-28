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

var n = $('button[click=to]').val();
console.log(n);

	instances.forEach((elem,index, n)=>{
		$('button[click=to]').click(()=>{
			elem.set(n)
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
