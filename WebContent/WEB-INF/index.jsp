<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bienvenue sur le Site de BLBLCar</title>
</head>
<body>
<div class = "left"></div> 
    <div class="centerTitle">
    <h1>&nbsp;&nbsp;&nbsp;&nbsp; Bienvenue sur <mark> BL</mark>BL<mark>CAR</mark> : Service de <mark>co</mark>voiturage</h1>
    </div>
    <div class="centerLiens">
    <div><a href="/WEB-INF/User/identification.jsp" ><b>Se connecter<br><br></a></div>
    <div><a href="/WEB-INF/User/inscription.jsp" ><b>S'inscrire</b></a></div>
    </div>
    <div class = "left"></div> 
    <c:import url="/WEB-INF/User/identification.jsp"/>
    <c:import url="/WEB-INF/User/inscription.jsp"/>
</body>
</html>