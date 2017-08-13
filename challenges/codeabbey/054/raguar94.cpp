#include<iostream>
using namespace std;
int traductor(char x){
    int y;
    switch(x){
        case 'a':
            y=0;
            break;
        case 'b':
            y=1;
            break;
        case 'c':
            y=2;
            break;
        case 'd':
            y=3;
            break;
        case 'e':
            y=4;
            break;
        case 'f':
            y=5;
            break;
        case 'g':
            y=6;
            break;
        case 'h':
            y=7;
            break;
    }
    return y;
}
char explorar(int c[8][8],int p1[2], int p2[2]){
  char flag='N';
  if (p1[0]==p2[0]||p1[1]==p2[1]) {
    flag='Y';
  }
  int b=0;
  int i=1;
  if ((p1[0]+i)<7||(p1[1]+i)<7) {
    while (b==0) { //Barrido diagonal 1 forward
      if(c[p1[0]+i][p1[1]+i]==1){
        flag='Y';
      }
      i+=1;
      if ((p1[0]+i)>7||(p1[1]+i)>7) {
        b=1;
      }
    }
  }
  b=0;
  i=1;
  if ((p1[0]-i)>0||(p1[1]-i)>0) {
    while (b==0) { //Barrido diagonal 1 backward
      if(c[p1[0]-i][p1[1]-i]==1){
        flag='Y';
      }
      i+=1;
      if ((p1[0]-i)<0||(p1[1]-i)<0) {
        b=1;
      }
    }
  }
  b=0;
  i=1;
  if ((p1[0]+i)<7||(p1[1]-i)>0) {
    while (b==0) { //Barrido diagonal 2 forward
      if(c[p1[0]+i][p1[1]-i]==1){
        flag='Y';
      }
      i+=1;
      if ((p1[0]+i)>7||(p1[1]-i)<0) {
        b=1;
      }
    }
  }
  b=0;
  i=1;
  if ((p1[0]-i)>0||(p1[1]+i)<7) {
    while (b==0) { //Barrido diagonal 2 backward
      if(c[p1[0]-i][p1[1]+i]==1){
        flag='Y';
      }
      i+=1;
      if ((p1[0]-i)<0||(p1[1]+i)>7) {
        b=1;
      }
    }
  }
  return flag;
}
int main(){
    int chess[8][8]={{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},
    {0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0},{0,0,0,0,0,0,0,0}};
    int x;
    char b;
    cin >> x;
    for(int i=0;i<x;i++){
        string king,queen;
        cin >> king;
        cin >> queen;
        int pk[2]={8-int(king[1]-'0'),traductor(king[0])};//Posición del rey
        int pq[2]={8-int(queen[1]-'0'),traductor(queen[0])};//Posición de la reina
        chess[pk[0]][pk[1]]=1;
        chess[pq[0]][pq[1]]=1;
        b=explorar(chess,pk,pq);
        cout << b <<" ";
        chess[pk[0]][pk[1]]=0;
        chess[pq[0]][pq[1]]=0;
    }
}
