#include <iostream>
using namespace std;

int main(){
    int x;
    cin >> x;
    int y[x],z[x],sum[x];
    for (int i=0;i<x;i++){
        cin >> y[i] >> z[i];
        sum[i] = y[i] + z[i];
        cout << sum[i] << " ";
    }
    return 0;
}
