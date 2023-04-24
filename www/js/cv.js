$(document).ready(function(){
   
    $('.sidenav').sidenav();
    $('.parallax').parallax();
    $(".dropdown-trigger").dropdown();

    var zoomLevel = 40; //niveau de zoom initial
    var zoomIncrement = 10; //incrémentation du niveau de zoom
    var zoomMin = 40; //niveau de zoom minimum
    var zoomMax = 100; //niveau de zoom maximum
  
    // fonction qui permet d'augmenter/diminuer le niveau de zoom avec les touches "ctrl" + "molette"
    $(window).on('wheel', function(e) {
      if (e.ctrlKey) {
        e.preventDefault();
        var delta = e.originalEvent.deltaY;
        if (delta > 0) {
          if (zoomLevel > zoomMin) {
            zoomLevel -= zoomIncrement;
          }
        } else {
          if (zoomLevel < zoomMax) {
            zoomLevel += zoomIncrement;
          }
        }
        $('#image').css('width', zoomLevel + '%');
      }
    });
  
    //fonction qui permet d'augmenter le niveau de zoom avec le bouton "zoom-in"
    $('#zoom-in').click(function() {
      if (zoomLevel < zoomMax) {
        zoomLevel += zoomIncrement;
        $('#image').css('width', zoomLevel + '%');
      }
    });
  
    //fonction qui permet de diminuer le niveau de zoom avec le bouton "zoom-out"
    $('#zoom-out').click(function() {
      if (zoomLevel > zoomMin) {
        zoomLevel -= zoomIncrement;
        $('#image').css('width', zoomLevel + '%');
      }
    });
  
    //empêcher le zoom global de la page
    $(document).on('wheel', function(e) {
      if (e.ctrlKey) {
        e.preventDefault();
      }
    });
  
    //empêcher le zoom global de la page avec les touches "ctrl" + "+/-"
    $(document).on('keydown', function(e) {
      if (e.ctrlKey && (e.which === 61 || e.which === 107 || e.which === 173 || e.which === 109)) {
        e.preventDefault();
      }
    });
  
    //empêcher le zoom global de la page avec la touche "ctrl" + "molette"
    $(document).on('keydown', function(e) {
      if (e.ctrlKey && (e.which === 38 || e.which === 40)) {
        e.preventDefault();
      }
    });
  
});


function show(anything){
    document.querySelector('.textBox').value = anything;
}

let dropdown = document.querySelector('.dropdown');
dropdown.onclick = function(){
    dropdown.classList.toggle('active');
}

