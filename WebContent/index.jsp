<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="CSS/style.css">
<title>Bienvenue sur le Site de BLBLCar</title>
</head>
<body>
    <h1><span>BL</span>BL<span>CAR</span>: Service de covoiturage</h1>
    <fieldset>
        <div><a href="/WEB-INF/User/identification.jsp" >Se connecter</a></div><BR><BR>
        <div><a href="/WEB-INF/User/inscription.jsp" >S'inscrire</a></div>
    </fieldset><br>
    <c:import url="/WEB-INF/User/identification.jsp"/><br>
    <c:import url="/WEB-INF/User/inscription.jsp"/>
</body>
</html>