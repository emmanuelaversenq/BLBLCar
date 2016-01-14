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
<form method="post" action="Register">
<div class ="center">
    <fieldset>
	    <label>Identifiant</label><input type="text" name="login"/><br/>
	    <label>Mot de passe</label><input type="password" name="pwd"/><br/>
	    <label>Confirmation</label><input type="password" name="confirm"/><br/>
    </fieldset>
     </div> 
    <div class ="center">
    <fieldset>
	    <label>Nom</label><input type="text" name="name"/><br/>
	    <label>Prénom</label><input type="text" name="firstName"/><br/>
	    <label>Adresse e-mail</label><input type="text" name="email"/><br/>
	    <label>Adresse : rue</label><input type="text" name="street"/><br/>
	    <label>ville</label><input type="text" name="city"/><br/>
	    <label>CP</label><input type="text" name="cp"/><br/>
	    <input type="checkbox" name="driver"/>Conducteur<br/>
	    <input type="checkbox" name="passenger"/>Passager<br/>
    </fieldset>   
    </div>  
</form>
<div class = "right"></div> 
</body>
</html>