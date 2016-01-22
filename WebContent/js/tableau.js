/**
 * 
 */

window.onload = calculeRayon;

function calculeRayon() {
	init();
	
	var item = document.getElementsByTagName("tr");
	for (var i=1; i < item.length; i++) {
		var adrDep=item[i].children[4].innerHTML;
		var adrArr=item[i].children[5].innerHTML;
		var distance=codeAddress(adrDep, adrArr,item[i].children[6]);
		//item[i].style.visibility= (distance > 2 ? "Hidden" : "visible");
		
	}
}
