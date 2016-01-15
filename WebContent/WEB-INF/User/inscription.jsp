<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="CSS/inscription.css">
<title>Inscription</title>
</head>
<body>
<div class = "left"></div> 
<form method="post" action="BLBLCar">
<div class ="center">
    <fieldset>
	    <label>Identifiant</label><input type="text" name="login" value="${ user.login }"/><span class="error">${errors['user.login']}</span><br/>
	    <label>Mot de passe</label><input type="password" name="pwd" value="${ user.pwd }"/><span class="error">${errors['user.pwd']}</span><br/>
	    <label>Confirmation</label><input type="password" name="pwdConfirm" value="${ pwdConfirm }"/><span class="error">${errors['pwdConfirm']}</span><br/>
    </fieldset>
     </div> 
    <div class ="center">
    <fieldset>
	    <label>Nom</label><input type="text" name="name" value="${ user.name }"/><span class="error">${errors['user.name']}</span><br/>
	    <label>Prénom</label><input type="text" name="firstname" value="${ user.firstname }"/><span class="error">${errors['user.firstname']}</span><br/>
	    <label>Adresse e-mail</label><input type="text" name="email" value="${ user.email }"/><span class="error">${errors['user.email']}</span><br/>
	    <label>Adresse : rue</label><input type="text" name="street" value="${ adress.street }"/><span class="error">${errors['adress.street']}</span><br/>
        <label>CP</label><input type="text" name="cp" value="${ adress.cp }"/><br/>
	    <label>ville</label><input type="text" name="city" value="${ adress.city }"/><span class="error">${errors['adress.city']}</span><br/>
	    <input type="checkbox" name="driver" value="${ user.driver }"/>Conducteur<br/>
	    <input type="checkbox" name="passenger" value="${ user.passenger }"/>Passager        <span class="error">${errors['driverPassenger']}</span><br/>
	    
<%-- 	    <c:if test="${ user.driver }"> --%>
<%-- 	       <input type="checkbox" name="passenger" value="${ driver }" checked="checked"/> --%>
<%-- 	    </c:if> --%>
<%-- 	    <c:if test="${ !user.driver }"> --%>
<%--            <input type="checkbox" name="passenger" value="${ driver }"/> --%>
<%--         </c:if>Conducteur<br/> --%>
	    
	    <input type="submit" name="envoi" value="Enregistrer"/><br/>
	    ${msgInscription}<br/>
    </fieldset>   
    </div>
</div>
</form>

</body>
</html>