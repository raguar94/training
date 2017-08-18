#include <iostream>
using namespace std;

double combinatoria(int N, int K){
    double a, b, c, comb;
    a = 1;
    b = 1;
    c = 1;
    for (int i=1;i<=N;i++){
        a = a*i;
    }
    for (int i=1;i<=K;i++){
        b = b*i;
    }
    for (int i=1;i<=(N-K);i++){
        c = c*i;
    }
    comb = a/(b*c);
    return comb;
}

int main(){
    int x,N,K;
    cin >> x;
    float a, b, c, comb;
    double C;
    cout.precision(13);
    for (int i=0;i<x;i++){
        cin >> N >> K;
        C = combinatoria(N,K);
        cout << C << " ";
    }
}
