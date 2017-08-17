#include <iostream>
using namespace std;

int main()
{
    int x;/* Numero de valores del array sumar */
    cin >> x;
    //int y[x]={477,848,448,489,691,323,84,254,583,535,831,692,287,829,145,126,987,676,44,491,482,508,1197,47,1009,414,1278,931,1072,1175,1256,248,722,404,728};
    int y[x];  /* Array de valores */
    for (int i=0;i<x;i++){
        cin>>y[i];
    }
    int sum = 0;
    for (int j=0;j<x;j++){
        sum += y[j];
    }
    
    cout << sum;
}
