
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel= "stylesheet" type = "text/css" href="identification.css" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<<<<<<< HEAD
<div class = "left"></div> 
<form  method="Post" action="BLBLCar">
=======

<form  method="Post" action="BlblCar">
>>>>>>> maversion
<div class ="center">
<fieldset>
 <label>Login </label> <input id=nom name=login type=text value="${form['login']}"><span class="error">${errors['login']}</span></br>
 <label>Password <span class="requis"> </label><input type="password" name="pwd" /><span class="error">${errors['pwd']}</span></br>
  <input type="submit" name="envoi" value="Identification"> 
 </fieldset>
 </div>
 </form>

</body>
</html>