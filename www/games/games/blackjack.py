import random

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
        print("Match nul !") 
        print ("     ")

    elif computer_score == 0:
        print ("L'ordinateur a blackjack ! Vous avez perdu.")
        print ("     ")

    elif user_score == 0:
        print ("Vous avez blackjack ! Vous avez gagné.")
        print ("     ")

    elif user_score > 21:
        print ("Vous avez dépassé 21 ! Vous avez perdu.")
        print ("     ")

    elif computer_score > 21:
        print ("L'ordinateur a dépassé 21 ! Vous avez gagné.")
        print ("     ")

    elif user_score > computer_score:
        print ("Vous avez gagné !")
        print ("     ")

    else:
        print ("Vous avez perdu.")
        print ("     ")

    return ""

def play_game():
    """Fonction principale qui gère le jeu"""
    user_cards = []
    computer_cards = []
    is_game_over = False

    # Distribue les cartes
    for i in range(2):
        user_cards.append(deal_card())
        computer_cards.append(deal_card())

    while not is_game_over:
        user_score = calculate_score(user_cards)
        computer_score = calculate_score(computer_cards)
        print ("     ")
        print(f" Vos cartes : {user_cards}, score = {user_score}")
        print(f" Carte de l'ordinateur : {computer_cards[0]}")
        print ("     ")

        # Vérifie si un joueur a blackjack ou si le score total est supérieur à 21
        if user_score == 0 or computer_score == 0 or user_score > 21:
            is_game_over = True
        else:
            # Demande à l'utilisateur s'il veut prendre une carte supplémentaire
            print ("     ")
            user_choice = input("Voulez-vous une carte supplémentaire ? Tapez 'y' ou 'n' : ")
            print ("     ")
            if user_choice == "y":
                user_cards.append(deal_card())
            else:
                is_game_over = True

    # Gère le tour de l'ordinateur
    while computer_score != 0 and computer_score < 17:
        computer_cards.append(deal_card())
        computer_score = calculate_score(computer_cards)

    print(f" Vos cartes : {user_cards}, score = {user_score}")
    print(f" Carte de l'ordinateur : {computer_cards}, score = {computer_score}")
    print ("     ")
    print(compare(user_score, computer_score))

# Démarre le jeu
while input("Voulez-vous jouer une partie de blackjack ? Tapez 'y' ou 'n' : ") == "y":
    play_game()
