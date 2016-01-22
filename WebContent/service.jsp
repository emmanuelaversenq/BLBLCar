<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Service</title>
</head>
<body>
    <form method="post" action="Service">
        <h2>Bienvenue sur la page service de BL BL Car</h2><br/><br/>
        <div>
            <c:import url="/WEB-INF/User/listUser.jsp" />
            
        </div>
        
        <br/><br/>
    </form>
    <div>
        <c:import url="/WEB-INF/Map/map.jsp" />
    </div>
</body>
</html>