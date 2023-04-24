import random
from browser import document, alert
import js

# Initialise les widgets
user_cards_label = document.createElement("label")
user_cards_label.textContent = "Vos cartes : "
document <= user_cards_label

user_cards = document.createElement("label")
user_cards_value = ""
user_cards.textContent = user_cards_value
document <= user_cards

computer_card_label = document.createElement("label")
computer_card_label.textContent = "Carte de l'ordinateur : "
document <= computer_card_label

computer_card = document.createElement("label")
computer_card_value = ""
computer_card.textContent = computer_card_value
document <= computer_card

result_label = document.createElement("label")
document <= result_label

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
        result_label.textContent = "Match nul !"
    elif computer_score == 0:
        result_label.textContent = "L'ordinateur a blackjack ! Vous avez perdu."
    elif user_score == 0:
        result_label.textContent = "Vous avez blackjack ! Vous avez gagné."
    elif user_score > 21:
        result_label.textContent = "Vous avez dépassé 21 ! Vous avez perdu."
    elif computer_score > 21:
        result_label.textContent = "L'ordinateur a dépassé 21 ! Vous avez gagné."
    elif user_score > computer_score:
        result_label.textContent = "Vous avez gagné !"
    else:
        result_label.textContent = "Vous avez perdu."

def update_labels():
    """Met à jour les labels avec les cartes et les scores"""
    user_cards.textContent = str(user_cards_list) + " - Score : " + str(calculate_score(user_cards_list))
    computer_card.textContent = str([computer_cards_list[0]]) + " - Score : ?"

def end_game():
    """Termine le jeu"""
    global is_game_over
    is_game_over = True
    computer_score = calculate_score(computer_cards_list)
    computer_card.textContent = str(computer_cards_list) + " - Score : " + str(computer_score)
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
    answer = js.confirm("Voulez-vous prendre une carte ?")
    if answer:
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
js.alert(result)



# from browser import *
      
#       output_div = document["output"]

#       output_div.innerHTML = "test"
      
#       def text(ev):
#         #output_div = document["output"]
#         #output_div.innerHTML = "test"
#         alert("hello!")

#       document["button"].bind("click",text)