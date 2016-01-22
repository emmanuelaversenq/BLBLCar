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
<div class ="bloc">
<div class ="center">
    <fieldset>
        <input type="hidden" name="ecran"  value="inscription">
	    <label>Identifiant<span class="requis">*</span></label><input type="text" name="loginIns" value="${ user.login }"/><span class="error">${errors['user.login']}</span><br/>
	    <label>Mot de passe<span class="requis">*</span></label><input type="password" name="pwdIns" value="${ user.pwd }"/><span class="error">${errors['user.pwd']}</span><br/>
	    <label>Confirmation<span class="requis">*</span></label><input type="password" name="pwdConfirm" value="${ pwdConfirm }"/><span class="error">${errors['pwdConfirm']}</span><br/>
    </fieldset>
     </div> 
    <div class ="center">
    <fieldset>
	    <label>Nom<span class="requis">*</span></label><input type="text" name="name" value="${ user.name }"/><span class="error">${errors['user.name']}</span><br/>
	    <label>Prénom<span class="requis">*</span></label><input type="text" name="firstname" value="${ user.firstname }"/><span class="error">${errors['user.firstname']}</span><br/>
	    <label>Adresse e-mail<span class="requis">*</span></label><input type="text" name="email" value="${ user.email }"/><span class="error">${errors['user.email']}</span><br/>
	    <label>Adresse : rue<span class="requis">*</span></label><input type="text" name="street" value="${ adress.street }"/><span class="error">${errors['adress.street']}</span><br/>
        <label>CP</label><input type="text" name="cp" value="${ adress.cp }"/><br/>
	    <label>ville<span class="requis">*</span></label><input type="text" name="city" value="${ adress.city }"/><span class="error">${errors['adress.city']}</span><br/>
	    	    
	    <c:if test="${ user.driver }">
	       <input type="checkbox" name="driver" value="driver" checked="checked"/>
	    </c:if>
	    <c:if test="${ !user.driver }">
           <input type="checkbox" name="driver" value="driver"/>
        </c:if>Conducteur<br/>
        
        <c:if test="${ user.passenger }">
           <input type="checkbox" name="passenger" value="passenger" checked="checked"/>
        </c:if>
        <c:if test="${ !user.passenger }">
           <input type="checkbox" name="passenger" value="passenger"/>
        </c:if>Passager<br/><span class="error">${errors['driverPassenger']}</span><br/>
        	    
	    <input type="submit" name="envoi" value="Enregistrer"/><br/>
	    <br/>${msgInscription}<br/>
    </fieldset>   
    </div>
    </div>
</form>

</body>
</html>