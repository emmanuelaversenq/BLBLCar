/**
 * 
 */

var directionsService = new google.maps.DirectionsService(); // service GoogleMaps
var map,geocoder, marker, marker2; // La carte, le service de géocodage et les marqueurs
var depart,arrivee,ptCheck; // point de départ, arrivé et de vérification

/*initialise google MAP V3*/
function init() {
	/*gestion des routes*/
	directionsDisplay = new google.maps.DirectionsRenderer();
	/*emplacement par défaut de la carte (Toulouse)*/
	/*var maison = new google.maps.LatLng(43.6042600, 1.4436700);*/
	var maison = new google.maps.LatLng(43.53992, 1.5114959999999655);
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
                		anchor: new google.maps.Point(43.53992, 1.5114959999999655)
                	},         	
 
                position: new google.maps.LatLng(43.53992, 1.5114959999999655),
                map: map,
				title:"Berger-Levrault"
                });
	/*directionsDisplay.setPanel(document.getElementById("divRoute"));*/
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
	var longPoint0=point0.B; // Longitude de départ du premiersegment
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
    		anchor: new google.maps.Point(43.53992, 1.5114959999999655)
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

