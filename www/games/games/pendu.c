#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdbool.h> // nécessaire pour utiliser le type bool

#define MAX_WRONG_GUESSES 11 // Le nombre maximum de mauvaises réponses autorisées
#define WORDS_COUNT 10 // Le nombre de mots dans la liste

// La liste des mots à deviner
const char *WORDS[WORDS_COUNT] = {
    "ordinateur",
    "programme",
    "algorithme",
    "variable",
    "condition",
    "boucle",
    "tableau",
    "fonction",
    "pointeur",
    "compilation"
};

int main()
{
    char word_to_guess[50];
    char guessed_letters[26] = {'\0'}; // initialise le tableau des lettres essayées à vide
    int wrong_guesses = 0;

    // Sélectionne un mot aléatoire dans la liste
    strcpy(word_to_guess, WORDS[rand() % WORDS_COUNT]);

    // Initialise le tableau des lettres trouvées avec des espaces
    char found_letters[strlen(word_to_guess)];
    memset(found_letters, ' ', sizeof(found_letters));

    printf("Jeu du pendu\n\n");

    // Boucle principale du jeu
    while (wrong_guesses < MAX_WRONG_GUESSES && strchr(found_letters, ' ') != NULL) {
        printf("\nMot à deviner : ");
        for (int i = 0; i < strlen(word_to_guess); i++) {
            if (found_letters[i] == ' ') {
                printf("_ ");
            } else {
                printf("%c ", found_letters[i]);
            }
        }

        printf("\nLettres déjà essayées : ");
        for (int i = 0; i < strlen(guessed_letters); i++) {
            printf("%c ", guessed_letters[i]);
        }

        printf("\nEntrez une lettre : ");
        char input[10];
        scanf("%s", input);

        // Vérifie si l'entrée est une lettre
        if (!isalpha(input[0])) {
            printf("Erreur : veuillez entrer une lettre\n");
            continue;
        }

        // Vérifie si la lettre a déjà été essayée
        if (strchr(guessed_letters, input[0]) != NULL) {
            printf("Vous avez déjà essayé cette lettre\n");
            continue;
        }

        guessed_letters[strlen(guessed_letters)] = input[0];

        // Vérifie si la lettre est présente dans le mot à deviner
        bool letter_found = false; // initialise la variable à false
        for (int i = 0; i < strlen(word_to_guess); i++) {
            if (word_to_guess[i] == input[0]) {
                found_letters[i] = input[0];
                letter_found = true; // indique que la lettre a été trouvée
            }
        }

        if (letter_found) { // si la lettre a été trouvée, ne pas compter comme une mauvaise réponse
            printf("La lettre est dans le mot\n");
        } else {
            wrong_guesses++;
            printf("La lettre n'est pas dans le mot\n");
        }

        printf("Il vous reste %d essais\n", MAX_WRONG_GUESSES - wrong_guesses); // affiche le nombre d'essais restants

        if (wrong_guesses == MAX_WRONG_GUESSES) {
            break;
        }
    }

    // Affiche le résultat de la partie
    printf("\nMot àdeviner : %s\n", word_to_guess);
    if (wrong_guesses == MAX_WRONG_GUESSES) {
        printf("Vous avez perdu ! Le mot était : %s\n", word_to_guess);
    } else {
        printf("Félicitations, vous avez trouvé le mot : %s\n", word_to_guess);
    }
    return 0;
    }