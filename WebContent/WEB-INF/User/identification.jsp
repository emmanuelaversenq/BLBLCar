
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel= "stylesheet" type = "text/css" href="CSS/identification.css"/>
     <link rel= "stylesheet" type = "text/css" href="CSS/inscription.css"/>
</head>
<body>
    <form  method="Post" action="BLBLCar">
        <div class ="bloc">
            <div class ="center">
                <fieldset>
                    <input type="hidden" name="ecran"  value="identification">
                    <label>Login<span class="requis">*</span> </label> <input id=nom name=login type=text value="${form['login']}"><span class="error">${errors['login']}</span><br>
                    <label>Password<span class="requis">*</span> </label><input type="password" name="pwd" /><span class="error">${errors['pwd']}</span><br>
                    <input type="submit" name="envoi" value="Identification">
                </fieldset>
            </div>
        </div>    
    </form>
</body>
</html>