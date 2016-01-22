<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel = "stylesheet" type = "text/css" href = "CSS/service.css" />
<title>Service</title>
</head>
<body>
<div class="left"></div>
 <div class="centerTitle">
        <h1>&nbsp;&nbsp;&nbsp;&nbsp; Bienvenue sur <mark> BL</mark>BL<mark>CAR</mark>: Service de <mark>co</mark>voiturage</h1><br/><br/>
    </div>

    <form method="post" action="Service">
   
       <div class ="centerLeft">
            <c:import url="/WEB-INF/User/listUser.jsp" />
            
        </div>
        
        
    </form>
    <div class = "centerRight">
        <c:import url="/WEB-INF/Map/map.jsp" />
    </div>
    
    <div class="right"></div>
</body>
</html>