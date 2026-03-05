#include <iostream>
#include <vector> // Utilisation recommandée en C++ moderne

using namespace std;

// Fonction pour remplir le tableau
void saisirTableau(int T[], int n) {
    for (int i = 0; i < n; i++) {
        cout << "T[" << i << "] = ";
        while (!(cin >> T[i])) { // Protection contre les saisies non-numériques
            cout << "Erreur. Entrez un nombre entier pour T[" << i << "] : ";
            cin.clear();
            cin.ignore(1000, '\n');
        }
    }
}

// Fonction d'affichage (passage par constante pour la sécurité)
void afficherTableau(const int T[], int n) {
    cout << "\n--- Elements du tableau ---" << endl;
    for (int i = 0; i < n; i++) {
        cout << "T[" << i << "] = " << T[i] << endl;
    }
}

// Calculs statistiques
void calculerStatistiques(const int T[], int n) {
    long somme = 0;
    long produit = 1;

    for (int i = 0; i < n; i++) {
        somme += T[i];
        produit *= T[i];
    }

    cout << "\n--- Resultats ---" << endl;
    cout << "Somme totale : " << somme << endl;
    cout << "Produit total : " << produit << endl;
}

int main() {
    int n;
    const int TAILLE_MAX = 10;
    int T[TAILLE_MAX];

    cout << "Veuillez saisir la taille du tableau (max " << TAILLE_MAX << ") : ";
    cin >> n;

    // Verification de la taille pour la securite du programme
    if (n > TAILLE_MAX || n <= 0) {
        cout << "Taille invalide. Sortie du programme." << endl;
        return 1;
    }

    saisirTableau(T, n);
    afficherTableau(T, n);
    calculerStatistiques(T, n);

    return 0;
}
