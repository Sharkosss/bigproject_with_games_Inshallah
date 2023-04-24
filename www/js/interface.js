function checkCommand(event) {
  if (event.keyCode === 13 || event.type === 'click') { // Ajout de la vérification du type d'événement pour le bouton
    var inputVal = document.getElementById("inputCmd").value;
    if (inputVal == "cd /") {
      window.location.href = "../../index.php";
    }
  }
}


// function launchBlackjack() {
//     // Rediriger l'utilisateur vers la page contenant le jeu de blackjack
//     window.location.href = "chemin/vers/votre/fichier/html/contenant/le/jeu/de/blackjack.html";
// }

// // Appeler la fonction launchBlackjack lorsqu'on écrit blackjack.py dans l'invite de commande
// function checkCommand(event) {
//     if (event.keyCode === 13 || event.type === 'click') {
//         var inputVal = document.getElementById("inputCmd").value;
//         if (inputVal == "blackjack.py") {
//             launchBlackjack();
//         }
//     }
// }
