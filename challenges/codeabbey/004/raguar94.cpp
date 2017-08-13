#include <iostream>
using namespace std;

int main()
{
    int x;
    cin >> x;
    int y[x],z[x],other[x];
    for(int i=0;i<x;i++){
        cin >> y[i] >> z[i];
        if (y[i]<z[i]){
            other[i]=y[i];
        } else {
            other[i]=z[i];
        }
        cout << other[i] << " ";
    }
}
