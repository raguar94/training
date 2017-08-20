#include <iostream>
using namespace std;

int main(){
  int x;
  cin >> x;
  int dices[5];
  int conteos[2];
  int count, pointer, numrep1, numrep2,sum;
  for (int i=0;i<x;i++){
    numrep1 = 0;
    numrep2 = 0;
    sum = 0;
    for (int j=0;j<5;j++){
      cin >> dices[j];
    }
    conteos[0] = 1;
    conteos[1] = 1;
    for (int j=0;j<5;j++){
      count = 1;
      for (int k = 0; k < 5; k++) {
        if (dices[j] == dices[k] && j!=k && dices[j] != numrep1){
          count += 1;
        }
      }
      if (numrep1 == 0 && count > 1) {
        numrep1 = dices[j];
        conteos[0] = count;
      }
      else {
        if (dices[j] != numrep1 && count > 1) {
          numrep2 = dices[j];
          conteos[1] = count;
          break;
        }
      }
    }
    if (conteos[0] == 1) {
      for (int j=0;j<5;j++){
        sum += dices[j];
      }
      if (sum == 15) {
        cout << "small-straight ";
      } else {
        if (sum == 20) {
          cout << "big-straight ";
        } else {
          cout << "none ";
        }
      }
    } else {
      if (conteos[0] == 2 && conteos[1] == 2) {
        cout << "two-pairs ";
      }
      if ((conteos[0] == 3 && conteos[1] == 2) || (conteos[0] == 2 && conteos[1] == 3)) {
        cout << "full-house ";
      }
      if (conteos[0] == 2 && conteos[1] == 1) {
        cout << "pair ";
      }
      if (conteos[0] == 3 && conteos[1] == 1) {
        cout << "three ";
      }
      if (conteos[0] == 4) {
        cout << "four ";
      }
      if (conteos[0] == 5) {
        cout << "yacht ";
      }
    }
  }
}
