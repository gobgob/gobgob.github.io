$(function() {
    $(document).mousemove(function(e){
        // Taille de fenêtre
        var wwidth = $(window).width();
        
        // Chiffre de 0 à 35 en fonction de la position de la souris
        var position = Math.floor(36*e.pageX / wwidth);
        
        // Centre la position pour que gobywan suive mieux la souris
        position += 36/2;
        if (position >= 36) position -= 36;
        
        // Changement de position de l'img pour la faire tourner :)
        $('#gobywan').css('background-position', -150.3888888888889*position+"px");
    }); 
});