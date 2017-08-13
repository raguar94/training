#include <iostream>
#include <math.h>
using namespace std;

int main(){
    int x;
    cin >> x;
    float y[x],z[x];
    int div[x];
    for (int i=0;i<x;i++){
        cin >> y[i] >> z[i];
        div[i] = round(y[i]/z[i]);
        cout << div[i] << " ";
    }
}
