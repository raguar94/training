#include <iostream>
#include <math.h>
using namespace std;

int main (){
    int x,A,B,C,sum1,sum2,l;
    cin >> x;
    for(int i=0;i<x;i++){
        cin >>A>>B>>C;
        sum1=A*B+C;
        int bandera=0;
        sum2=0;
        while(bandera==0){
            sum2+=sum1%10;
            sum1=sum1/10;
            if(sum1==0){
                bandera=1;
            }
        }
        cout<<sum2<<" ";
    }
}
