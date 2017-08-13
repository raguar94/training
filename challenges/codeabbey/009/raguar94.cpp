#include <iostream>
#include <math.h>
using namespace std;

int main(){
    int x,A,B,C,sum;
    cin >> x;
    for (int i=0;i<x;i++){
        cin >>A>>B>>C;
        if (A>B && A>C){
            sum=B+C;
            if (sum>=A){
                cout << "1 ";
            } else {
                cout << "0 ";
            }
        }
        if (B>A && B>C){
            sum=A+C;
            if (sum>=B){
                cout << "1 ";
            } else {
                cout << "0 ";
            }
        }
        if (C>B && C>A){
            sum=B+A;
            if (sum>=C){
                cout << "1 ";
            } else {
                cout << "0 ";
            }
        }
    }
}
