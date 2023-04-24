<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Invite de commande</title>
  <link rel="stylesheet" href="../css/inferface.css">
  <script src="../js/interface.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/brython/3.11.2/brython.min.js">
  </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/brython/3.11.2/brython_stdlib.min.js">
  </script>
</head>
<body onload="brython()">
  
  <div class="container">
    
    
    <div class="input-container">
        <label for="input1">C:\></label>
        <input type="text" id="input1" placeholder="Entrez une commande..." style = "color: #FFF;" onkeydown="checkCommand(event)">
      <!-- <button id="button">Exécuter</button> faire une fonction js qui fait croire que le bouton c'est entrée-->
    </div>
    
    <div id = "output" class="output">
        <div id="result"></div>
        <script type="text/python">
        from browser import document, bind

        results = []  # stockage des résultats

        @bind(document, "keydown")
        def keyDownHandler(e):
            if e.keyCode == 13:
                printchar()

        def printchar():
            """Fonction qui calcule la somme des deux nombres saisis"""
            input1 = document.getElementById("input1")
            result = input1.value

            #results.insert(0, result) # ajouter le nouveau résultat à la liste en haut
            
            # Supprimer le premier résultat si la liste en contient plus de 25
            if len(results) == 25:
                results.pop()

            # Vérifier si la valeur saisie est égale à "./blackjack.py"
            if result == "./blackjack.py":
                result=("Voulez-vous jouer une partie de blackjack ? Tapez 'y' ou 'n' :")
                results.insert(0, result)
                all_results = "Voulez-vous jouer une partie de blackjack ? Tapez 'y' ou 'n' :"
                document.getElementById("result").innerHTML = all_results
                input1.value = ""
                input1 = document.getElementById("input1")
                YesOrNo = input1.value

                if YesOrNo == "y":
                    results.insert(0, "gggg")                                        # Si l'utilisateur tape 'y'
                    all_results = "<br>".join(results)

                if YesOrNo == "n": 
                    results.insert(0, "fffff")                                      # Si l'utilisateur tape 'n'
                    all_results = "<br>".join(results)
                
                                                                            # Ajouter la réponse de l'utilisateur à la liste des résultats

                document.getElementById("result").innerHTML = all_results

            else:
                 # créer une chaîne contenant tous les résultats
                results.insert(0, result)
                all_results = "<br>".join(results)
                document.getElementById("result").innerHTML = all_results

            input1.value = ""  # nettoyer l'input
            
            document.getElementById("result").innerHTML = all_results
        </script>
    </div>
  </div>
</body>
</html>




