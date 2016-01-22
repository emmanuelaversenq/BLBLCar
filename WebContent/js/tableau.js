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
		var distance=codeAddress(adrDep, adrArr,item[i].children[2]);
	}
}

function codeAddress(adressDep,adressArr,res) {
	/* Appel au service de geocodage avec l'adresse en paramètre */
	       geocoder.geocode( { 'address': document.getElementById(adressDep).value}, function(results,status       ){
	       /* Si l'adresse a pu être géolocalisée */
	       if (status == google.maps.GeocoderStatus.OK) {
	             /* Récupération de sa latitude et de sa longitude */
	           var latAdr1  = results[0].geometry.location.lat();
	           var longAdr1  = results[0].geometry.location.lng();
	           map.setCenter(results[0].geometry.location);
	           
	           geocoder.geocode( { 'address': document.getElementById(adressArr).value}, function(results,status2       ){
	                    /* Si l'adresse a pu être géolocalisée */
	                    if (status == google.maps.GeocoderStatus.OK && status2 == google.maps.GeocoderStatus.OK) {
	                           /* Récupération de sa latitude et de sa longitude */
	                        var latAdr2 = results[0].geometry.location.lat();
	                        var longAdr2  = results[0].geometry.location.lng();
	                        map.setCenter(results[0].geometry.location);
	                        alert(distance(latAdr1, longAdr1, latAdr2, longAdr2));
	                        res.innerHTML=distance(latAdr1, longAdr1, latAdr2, longAdr2);
	                    } else {
	                         alert("Le geocodage n\'a pu etre effectue pour la raison suivante: " + status2);
	                         }
	                        
	                        });
	       } else {
	            alert("Le geocodage n\'a pu etre effectue pour la raison suivante: " + status);
	       }
	           
	       });
	       
	}

function distance(lat_a, lon_a, lat_b, lon_b)  {
    a = Math.PI / 180;
    lat1 = lat_a * a;
    lat2 = lat_b * a;
    lon1 = lon_a * a;
    lon2 = lon_b * a;
    t1 = Math.sin(lat1) * Math.sin(lat2);
    t2 = Math.cos(lat1) * Math.cos(lat2);
    t3 = Math.cos(lon1 - lon2);
    t4 = t2 * t3;
    t5 = t1 + t4;
    rad_dist = Math.atan(-t5/Math.sqrt(-t5 * t5 +1)) + 2 * Math.atan(1);
    return (rad_dist * 3437.74677 * 1.1508) * 1.6093470878864446;
}
