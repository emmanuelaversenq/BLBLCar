<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
       <!-- content="width=320" pour dimensionner la carte -->
        <!-- Inclusion de l'API Google MAPS -->

        <!-- Le paramètre "sensor" indique si cette application utilise détecteur pour déterminer la position de l'utilisateur -->
       <script type="text/javascript" src="http://maps.google.com/maps/api/js"></script>
      <script src="js/map.js" type="text/javascript" language="javascript"></script>
      <link rel = "stylesheet" type = "text/css" href = "inscription.css" /> 

<title>Insert title here</title>
</head>
<body onload="init()">

    <div class="center">
       <div class = "map" >
     
    <table>
    <tr>
   
	    <td> <b>Départ: </b></td>

	    <td><input type="text" id="adrDep" value="" style="width:100%  ;"></td>
	    <td>  </td>
	    <td>
    </tr>
    <tr>
	    <td><b>Arrivée: </b></td>
	    <td><input type="text" id="adrArr" value="64 Avenue Jean Rostantd, Labège" style="width:100%;"></td><td>
     </tr>
    <tr>
    <td><input type="button" value="Recherche" onclick="rechercher('adrDep','adrArr') ; codeAddress('adrDep', 'adrArr') ;" ></td>
   <td><input type="button" value="Afficher un périmètre" onclick="affichePerimetre('adrDep') ;" ></td>
    </tr>
    </table>
    </div>
 
    <div id="divMap" style="float:left;width:100%; height:50%"
   
    ></div>
    </div>  

</body>
</html>