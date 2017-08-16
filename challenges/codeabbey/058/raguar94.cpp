#include <iostream>
using namespace std;

int main(){
    int num_cards;
    int card;
    int suit;
    int rank;
    cin >> num_cards;
    string suits[4] = {"Clubs", "Spades", "Diamonds", "Hearts"};
    string ranks[13] = {"2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"};
    for (int i=0;i<num_cards;i++){
        cin >> card;
        suit = card/13;
        rank = card%13;
        cout << ranks[rank] << "-of-" << suits[suit]<< " ";
    }
}
