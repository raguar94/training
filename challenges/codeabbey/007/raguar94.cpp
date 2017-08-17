#include <iostream>
#include <math.h>
using namespace std;

int main(){
    int x;
    cin >> x;
    float f[x];
    float m=5/9.0;
    float d=32*m;
    int c[x];
        for (int i=0;i<x;i++){
        cin >> f[i];
        c[i]=round(m*f[i]-d);
        cout << c[i] << " ";
    }
}
