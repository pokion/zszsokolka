window.onload = function(){
	'use strict';
	const viewer = new Viewer(document.getElementById('images'), {
  inline: true,
  viewed() {
    viewer.zoomTo(1);
  },
});
}
