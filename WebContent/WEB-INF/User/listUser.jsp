<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="CSS/listUser.css">
	<table>
	    <tr>
	        <th>Nom</th>
	        <th>Prénom</th>
	        <th>Adresse</th>
	        <th>e.mail</th>
	    </tr>
	    <c:forEach var="user" items="${ listPassenger }">
	        <tr class="zebre">
	            <td>${ user.name }</td>
	            <td>${ user.firstname }</td>
	            <td>${ user.adress }</td>
	            <td><a href="mailto:${ user.email }">${ user.email }</a></td>
	        </tr>
	    </c:forEach>
	</table>       
