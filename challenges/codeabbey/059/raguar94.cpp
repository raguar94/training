#include <iostream>
using namespace std;

int main(){
    string snumber;
    cin >> snumber;
    int turn;
    cin >> turn;
    string guess;
    int bulls;
    int cows;
    for (int i=0;i<turn;i++){
        bulls = 0;
        cows = 0;
        cin >> guess;
        for (int j=0;j<4;j++){
            for (int k=0;k<4;k++){
                if ((guess[j] == snumber[k]) && (j == k)){
                    bulls += 1;
                }
                if ((guess[j] == snumber[k]) && (j != k)){
                    cows += 1;
                }
            }
        }
        cout << bulls << "-" << cows << " ";
    }
}
