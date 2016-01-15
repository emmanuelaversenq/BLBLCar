<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="CSS/inscription.css">

 <meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
       <!-- content="width=320" pour dimensionner la carte -->
        <!-- Inclusion de l'API Google MAPS -->

        <!-- Le paramètre "sensor" indique si cette application utilise détecteur pour déterminer la position de l'utilisateur -->

        <script type="text/javascript" src="http://maps.google.com/maps/api/js"></script>
      <script src="js/map.js" type="text/javascript" language="javascript"></script>


<title>Bienvenue sur le Site de BLBLCar</title>
</head>
<body onload="init()">
<div class = "right"></div> 
    <div class="centerTitle">
    <h1>&nbsp;&nbsp;&nbsp;&nbsp; Bienvenue sur <mark> BL</mark>BL<mark>CAR</mark> : Service de <mark>co</mark>voiturage</h1>
    </div>
    <div class="centerLiens">
    <div><a href="/WEB-INF/User/identification.jsp" ><b>Se connecter<br><br></a></div>
    <div><a href="/WEB-INF/User/inscription.jsp" ><b>S'inscrire</b></a></div>
     <c:import url="/WEB-INF/Map/map.jsp"/>
    
    
    
 <%--   <c:import url="/WEB-INF/Map/map.html"/>
       <div>
    <table>
    <tr><td><b>Départ: </b></td>
    <td><input type="text" id="adrDep" value=""style="width:300px;"></td>
  
    <tr><td><b>Arrivée: </b></td><td><input type="text" id="adrArr" value="Avenue de la Méridienne, Labège" style="width:300px;"></td><td>
    <input type="button" value="Recherche"onclick="rechercher('adrDep','adrArr')">
    </td></tr>
    </table>
    </div>
    <div id="divMap" style="float:left;width:50%;
    height:50%"></div>
   --%>  
    
    
    
    </div>
    
    <div class = "left"></div> 
    
    <c:import url="/WEB-INF/User/identification.jsp"/>
    <c:import url="/WEB-INF/User/inscription.jsp"/>
    
    
    
</body>
</html>