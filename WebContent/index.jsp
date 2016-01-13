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
    <h1><p>BL</p>BL<p>CAR</p>: Service de covoiturage</h1>
    <div><a href="/WEB-INF/User/identification.jsp" >Se connecter</a></div>
    <div><a href="/WEB-INF/User/inscription.jsp" >S'inscrire</a></div>
    <c:import url="/WEB-INF/User/identification.jsp"/>
    <c:import url="/WEB-INF/User/inscription.jsp"/>
</body>
</html>