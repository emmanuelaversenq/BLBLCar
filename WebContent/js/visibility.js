/** Fonction basculant la visibilité d'un élément dom
* @parameter anId string l'identificateur de la cible à montrer, cacher
*/
function toggle(param1,param2, param3)
{
    nodeParam1 = document.getElementById(param1);
    nodeParam2 = document.getElementById(param2);
    nodeParam3 = document.getElementById(param3);
    
    if ((nodeParam1.style.visibility=="hidden")||(nodeParam1.style.visibility==""))
    {
        // Contenu caché, le montrer
        
        nodeParam1.style.visibility = "visible";
        nodeParam2.style.visibility = "Hidden";
        nodeParam3.style.visibility = "Hidden";
        nodeParam1.style.height = "auto";         // Optionnel rétablir la hauteur
    }
    else
    {
        // Contenu visible, le cacher
        nodeParam1.style.visibility = "hidden";
        nodeParam1.style.height = "0";            // Optionnel libérer l'espace
    }
}



