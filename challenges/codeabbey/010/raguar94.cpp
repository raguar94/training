#include <iostream>
#include <math.h>
using namespace std;

int main(){
    int x,a,b;
    float x1,y1,x2,y2;
    cin >> x;
    for (int i=0;i<x;i++){
        cin >>x1>>y1>>x2>>y2;
        a=round((y2-y1)/(x2-x1));
        b=y1-(a*x1);
        cout <<"(" <<a<<" "<<b<<") ";
    }
}
