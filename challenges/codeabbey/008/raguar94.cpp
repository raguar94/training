#include <iostream>
#include <math.h>
using namespace std;

int main(){
    int x,A,B,N,sum;
    cin >> x;
    for (int i=0;i<x;i++){
        cin >> A >> B >> N;
        sum=0;
        for (int j=0;j<N;j++){
            sum += A + j*B;
        }
        cout << sum << " ";
    }
}
