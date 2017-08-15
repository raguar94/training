#include <iostream>
using namespace std;

int main(){
    string word;
    string p_word;
    string data[350];
    int x = 0;
    while(word != "end"){
        cin >> word;
        data[x] = word;
        x += 1;
    }
    x -= 1;
    int point = 0;
    int flag;
    string words[x];
    string found[x];
    for(int i=0;i<x;i++){
        words[i] = data[i];
    }
    for (int i=0;i<x;i++){
        word = words[i];
        flag = 0;
        for(int j=i+1;j<x;j++){
            if(word == words[j]){
                p_word = word;
                flag = 1;
                for(int k=0;k<x;k++){
                    if(p_word == found[k]){
                       flag = 0; 
                    }
                }
                if (flag == 1){
                    found[point] = p_word;
                    point += 1;
                    break;
                }
            }
        }
    }
    string order[point];
    int p_first = 0;
    string first;
    for(int j=0;j<point;j++){
        for (int i=0;i<point;i++){
            if(i == 0){
                first = found[i];
                p_first = i;
            } else {
                if(found[i] < first){
                    first = found[i];
                    p_first = i;
                }
            }
        }
        order[j] = first;
        found[p_first] = "zzz";
    }
    for(int i=0;i<point;i++){
        cout << order[i] << " ";
    }
}
