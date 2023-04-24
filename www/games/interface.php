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
    
    <div class="prompt">C:\></div>
    <div class="input-container">
      <input type="text" id="inputCmd" placeholder="Entrez une commande..." style = "color: #FFF;" onkeydown="checkCommand(event)">
      <button id="button" onclick="checkCommand(event)">Exécuter</button>
    </div>
    
    <div id = "output" class="output">
      
      <script type="text/python">
      
      from tkinter import *
      import random
      from tkinter import messagebox

      # Initialise la fenêtre principale
      root = Tk()
      root.title("Blackjack")

      # Initialise les widgets
      user_cards_label = Label(root, text="Vos cartes : ")
      user_cards_value = StringVar()
      user_cards = Label(root, textvariable=user_cards_value)
      computer_card_label = Label(root, text="Carte de l'ordinateur : ")
      computer_card_value = StringVar()
      computer_card = Label(root, textvariable=computer_card_value)
      result_label = Label(root, text="")

      # Place les widgets dans la fenêtre
      user_cards_label.grid(row=0, column=0)
      user_cards.grid(row=0, column=1)
      computer_card_label.grid(row=1, column=0)
      computer_card.grid(row=1, column=1)
      result_label.grid(row=2, column=0, columnspan=2)

      # Initialise les variables du jeu
      user_cards_list = []
      computer_cards_list = []
      is_game_over = False

      # Fonctions du jeu
      def deal_card():
          """Retourne une carte aléatoire"""
          cards = [11,2,3,4,5,6,7,8,9,10,10,10,10]
          card = random.choice(cards)
          return card

      def calculate_score(cards):
          """Prend une liste de cartes et retourne le score total"""
          if sum(cards) == 21 and len(cards) == 2:
              return 0
          if 11 in cards and sum(cards) > 21:
              cards.remove(11)
              cards.append(1)
          return sum(cards)

      def compare(user_score, computer_score):
          """Compare les scores de l'utilisateur et de l'ordinateur et retourne un message"""
          if user_score == computer_score:
              result_label.config(text="Match nul !")
          elif computer_score == 0:
              result_label.config(text="L'ordinateur a blackjack ! Vous avez perdu.")
          elif user_score == 0:
              result_label.config(text="Vous avez blackjack ! Vous avez gagné.")
          elif user_score > 21:
              result_label.config(text="Vous avez dépassé 21 ! Vous avez perdu.")
          elif computer_score > 21:
              result_label.config(text="L'ordinateur a dépassé 21 ! Vous avez gagné.")
          elif user_score > computer_score:
              result_label.config(text="Vous avez gagné !")
          else:
              result_label.config(text="Vous avez perdu.")

      def update_labels():
          """Met à jour les labels avec les cartes et les scores"""
          user_cards_value.set(str(user_cards_list) + " - Score : " + str(calculate_score(user_cards_list)))
          computer_card_value.set(str([computer_cards_list[0]]) + " - Score : ?")

      def end_game():
          """Termine le jeu"""
          global is_game_over
          is_game_over = True
          computer_score = calculate_score(computer_cards_list)
          computer_card_value.set(str(computer_cards_list) + " - Score : " + str(computer_score))
          compare(calculate_score(user_cards_list), computer_score)






      def play_game():
          """Fonction principale qui gère le jeu"""
          global user_cards_list, computer_cards_list, is_game_over
          
          # Donne deux cartes à l'utilisateur et à l'ordinateur
          for i in range(2):
              user_cards_list.append(deal_card())
              computer_cards_list.append(deal_card())
          
          # Met à jour les labels
          update_labels()
          
          # Boucle principale
          while not is_game_over:
              # Demande à l'utilisateur s'il veut prendre une carte
              response = messagebox.askyesno("Blackjack", "Voulez-vous prendre une carte ?")
              if response:
                  user_cards_list.append(deal_card())
                  update_labels()
                  user_score = calculate_score(user_cards_list)
                  if user_score > 21:
                      end_game()
              else:
                  # L'ordinateur prend des cartes tant que son score est inférieur à 17
                  while calculate_score(computer_cards_list) < 17:
                      computer_cards_list.append(deal_card())
                      update_labels()

                  # Termine le jeu
                  end_game()
          
          # Affiche le message de fin
          result = result_label.cget("text")
          messagebox.showinfo("Partie terminée", result)
      play_game()
          

          
      </script>
    </div>
  </div>
</body>
</html>
