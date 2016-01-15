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



