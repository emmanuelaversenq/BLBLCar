<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<script type="text/javascript">

/** Fonction basculant la visibilité d'un élément dom
* @parameter anId string l'identificateur de la cible à montrer, cacher
*/
function toggle(insc,ident)
{
    nodeInsc = document.getElementById(insc);
    nodeIdent = document.getElementById(ident);
    
    if (nodeInsc.style.visibility=="hidden")
    {
        // Contenu caché, le montrer
        
        nodeInsc.style.visibility = "visible";
        nodeIdent.style.visibility = "Hidden";
        nodeInsc.style.height = "auto";         // Optionnel rétablir la hauteur
    }
    else
    {
        // Contenu visible, le cacher
        nodeInsc.style.visibility = "hidden";
        nodeInsc.style.height = "0";            // Optionnel libérer l'espace
    }
}
</script>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bienvenue sur le Site de BLBLCar</title>
</head>
<body>
    <div class = "left"></div>
    <div class="centerTitle">
        <h1>&nbsp;&nbsp;&nbsp;&nbsp; Bienvenue sur <mark> BL</mark>BL<mark>CAR</mark> : Service de <mark>co</mark>voiturage</h1>
    </div>
       
    <div class="centerLiens">
        <div class="souligne"><href="#" onclick = "toggle('identification','inscription')" ><b>Se connecter<br><br></a></div>
        <div class="souligne"><href="#" onclick = "toggle('inscription','identification')" ><b>S'inscrire</b></a></div>
    </div>
        
    <div id="identification"><c:import url="/WEB-INF/User/identification.jsp" /></div>
    <div id="inscription"><c:import url="/WEB-INF/User/inscription.jsp"/></div>
 <div class = "right"></div>
</body>





</html>