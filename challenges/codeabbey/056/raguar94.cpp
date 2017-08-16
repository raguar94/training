#include <iostream>
using namespace std;

int main(){
  string board[5];
  for (int i=0;i<5;i++){
    cin >> board[i];
  }
  int turns = 5;
  char board2[50][50];
  for (int i = 0; i < 50; i++) {
    for (int j = 0; j < 50; j++) {
      if ((i >=23 && i <= 27) && (j >= 23 && j <= 29)){
        board2[i][j] = board[i-23][j-23];
      } else {
        board2[i][j] = '-';
        }
      }
    }
  int organisms;
  int grimm;
  for (int i=0;i<turns;i++){
    organisms = 0;
    for (int j=1;j<49;j++){
      for (int k=1;k<49;k++){
        grimm = 0;
        if (board2[j][k+1] == 'X' || board2[j][k+1] == 'D') {
          grimm += 1;
        }
        if (board2[j+1][k] == 'X' || board2[j+1][k] == 'D') {
          grimm += 1;
        }
        if (board2[j+1][k+1] == 'X' || board2[j+1][k+1] == 'D') {
          grimm += 1;
        }
        if (board2[j][k-1] == 'X' || board2[j][k-1] == 'D') {
          grimm += 1;
        }
        if (board2[j-1][k] == 'X' || board2[j-1][k] == 'D') {
          grimm += 1;
        }
        if (board2[j-1][k-1] == 'X' || board2[j-1][k-1] == 'D') {
          grimm += 1;
        }
        if (board2[j-1][k+1] == 'X' || board2[j-1][k+1] == 'D') {
          grimm += 1;
        }
        if (board2[j+1][k-1] == 'X' || board2[j+1][k-1] == 'D') {
          grimm += 1;
        }
        if ((grimm < 2 || grimm > 3) && (board2[j][k] == 'X')){
          board2[j][k] = 'D';
        }
        if (board2[j][k] == '-' && grimm == 3){
          board2[j][k] = 'B';
        }
      }
    }
    for (int i=1;i<49;i++){
      for (int j=1;j<49;j++){
        if (board2[i][j] == 'D'){
          board2[i][j] = '-';
        }
        if (board2[i][j] == 'B') {
          board2[i][j] = 'X';
        }
      }
    }
    for (int i=1;i<49;i++){
      for (int j=1;j<49;j++){
        if (board2[i][j] == 'X') {
          organisms += 1;
        }
      }
    }
    cout << organisms << " ";
  }
}
