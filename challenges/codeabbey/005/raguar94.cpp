#include <iostream>
using namespace std;

int main()
{
    int x;
    cin >> x;
    int y[x],z[x],a[x],other[x];
    for (int i=0;i<x;i++){
        cin >> y[i] >> z[i] >> a[i];
        if (y[i]<z[i] && y[i]<a[i]){
            other[i]=y[i];
        }
        if (z[i]<y[i] && z[i]<a[i]){
            other[i]=z[i];
        }
        if (a[i]<z[i] && a[i]<y[i]){
            other[i]=a[i];
        }
        cout << other[i] << " ";
    }
}
