<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Bienvenue sur le Site de BLBLCar</title>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js"></script>
<script src="js/map.js" type="text/javascript"></script>
<script src="js/visibility.js" type="text/javascript"></script>
</head>
<body>
	<div class="left"></div>
	<div class="centerTitle">
		<h1>
			&nbsp;&nbsp;&nbsp;&nbsp; Bienvenue sur <mark> BL</mark>BL<mark>CAR</mark>: Service de <mark>co</mark>voiturage</h1>
	</div>

	<div class="centerLiens">
		<a href="#" onclick="toggle('identification','inscription','map')"><b>Se connecter</b><br><br></a>
		<a href="#" onclick="toggle('inscription','identification','map')"><b>S'inscrire</b></a>
		
	</div>
    
    <div id ="map" class="${ (idVisible || insVisible ? 'hidden' : 'visible') }">
        <c:import url="/WEB-INF/Map/map.jsp" />
    </div>
	
 
    <div id="identification" class="${ (idVisible ? 'visible' : 'hidden') }">
        <c:import url="/WEB-INF/User/identification.jsp" />
    </div>

    
	<div id="inscription" class="${ (insVisible ? 'visible' : 'hidden') }">
		<c:import url="/WEB-INF/User/inscription.jsp" />
	</div>
	<div class="right"></div>
</body>





</html>
