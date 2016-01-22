/**
 * 
 */

var directionsService = new google.maps.DirectionsService(); // service GoogleMaps
var map,geocoder, marker, marker2; // La carte, le service de géocodage et les marqueurs
var depart,arrivee,ptCheck; // point de départ, arrivée et de vérification

/*initialise google MAP V3*/
function init() {
	/*gestion des routes*/
	directionsDisplay = new google.maps.DirectionsRenderer();
	/*emplacement par défaut de la carte (Toulouse)*/
	/*var maison = new google.maps.LatLng(43.6042600, 1.4436700);*/
	var maison = new google.maps.LatLng(43.5432517 ,1.5122082999999975);
	/*option par défaut de la carte*/
	var myOptions = {
			
		zoom:10,
		mapTypeId: google.maps.MapTypeId.ROADMAP,
		center: maison
	};
	

	/*creation de la map*/
	map = new google.maps.Map(document.getElementById("divMap"),myOptions);

	/*connexion de la map + le panneau de l'itinéraire*/
	directionsDisplay.setMap(map);
	//création du marqueur
                var marqueur = new google.maps.Marker({
                	icon: {
                		url :"img/BL.png",
                		size: new google.maps.Size(80,50),
                		anchor: new google.maps.Point(43.5432517, 1.5122082999999975)
                	},         	
 
                position: new google.maps.LatLng(43.5432517, 1.5122082999999975),
                map: map,
				title:"Berger-Levrault"
                });
    directionsDisplay.setPanel(document.getElementById("divRoute"));
	/*intialise le geocoder pour localiser les adresses */
	geocoder = new google.maps.Geocoder();
}

function trouveRoute() {
	/*test si les variables sont bien initialisés*/
	if (depart && arrivee){
	var request = {
		origin:depart,
		destination:arrivee,
		travelMode: google.maps.DirectionsTravelMode["DRIVING"]
	};
	/*appel à l'API pour tracer l'itinéraire*/
	directionsService.route(request, function(response,
	status) {
		if (status == google.maps.DirectionsStatus.OK) {
		directionsDisplay.setDirections(response);
		var monTrajet=response.routes[0] ;
		var point0=monTrajet.overview_path[0];// Position (B:, K:)
		var latPoint0=point0.K; // Latitude de départ du premier segment
		var longPoint0=point0.B; // Longitude de départ du premier segment
	}
	});
	}
}

function rechercher(src,src2){
	// ptCheck = code; /*adresse de départ ou arrivée ? */
	if (geocoder) {
	geocoder.geocode( { 'address':
	document.getElementById(src).value}, function(results,
	status) {
	if (status == google.maps.GeocoderStatus.OK) {
	/*ajoute un marqueur à l'adresse choisie*/
	map.setCenter(results[0].geometry.location);
	if (marker) { marker.setMap(null);}
	marker = new google.maps.Marker({
	map: map,
	position: results[0].geometry.location
	});
	/*on remplace l'adresse par celle fournie du
	geocoder*/
	document.getElementById(src).value =
	results[0].formatted_address;
	depart = results[0].formatted_address;
	/*trace la route*/
	}
	});
	geocoder.geocode( { 'address':
	document.getElementById(src2).value}, function(results,
	status) {
	if (status == google.maps.GeocoderStatus.OK) {
	/*ajoute un marqueur à l'adresse choisie*/
	if (marker2) { marker2.setMap(null);}
	marker2 = new google.maps.Marker({
		icon: {
    		url :"img/BL.png",
    		size: new google.maps.Size(80, 50),
    		anchor: new google.maps.Point(43.5432517, 1.512208299999997)
    	}, 
	map: map,
	position: results[0].geometry.location
	});
	/*on remplace l'adresse par celle fournie du
	geocoder*/
	document.getElementById(src2).value =
	results[0].formatted_address;
	arrivee = results[0].formatted_address;
	/*trace la route*/
	}
	trouveRoute();
	});
}}



function codeAddress(adressDep,adressArr) {
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


function affichePerimetre(src){
	 geocoder.geocode( { 'address':
		 document.getElementById(src).value}, function(results,
		status){
    if (status == google.maps.GeocoderStatus.OK) {
     /* Récupération de sa latitude et de sa longitude */
    	
    lat =  results[0].geometry.location.lat();
    long =   results[0].geometry.location.lng();
     map.setCenter(results[0].geometry.location);
    
//     alert(lat + " " + long);
     /* Affichage du marker */
 adressDep = new google.maps.LatLng(lat , long);
     /* Permet de supprimer le marker précédemment affiché */
 var myCircle = new google.maps.Circle({
     center: adressDep,
     radius: 2000,
//     strokeColor : "#0000FF",
     strokeColor : "rgb(184,7,25)" ,
     strokeOpacity : 0.8,
     strokeWeight :2,
//     fillColor: "#0000FF" ,
     fillColor: "#9e9e9e",
     fillOpacity: 0.5,
     map: map,
     center: map.center,
    

 });

     } else {
     alert("Le geocodage n\'a pu etre effectue pour la raison suivante: " + status);
     }
    
    });
	  
  	
	 myCircle.setMap(map); 	  
}



