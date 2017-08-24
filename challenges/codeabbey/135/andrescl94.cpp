/*135 Variable Length Code
  Creado por: Andrés Cuberos 2017*/
#include <iostream>
#include <map>
#include <string>
#include <string.h>

using namespace std;

map<char,string> init_dict(){
	map<char,string> diccionario;
	diccionario[' ']="11";           diccionario['e']="101";
	diccionario['t']="1001";         diccionario['o']="10001";
	diccionario['n']="10000";        diccionario['a']="011";
	diccionario['s']="0101";         diccionario['i']="01001";
	diccionario['r']="01000";        diccionario['h']="0011";
	diccionario['d']="00101";        diccionario['l']="001001";
	diccionario['!']="001000";       diccionario['u']="00011";
	diccionario['c']="000101";       diccionario['f']="000100";
	diccionario['m']="000011";       diccionario['p']="0000101";
	diccionario['g']="0000100";      diccionario['w']="0000011";
	diccionario['b']="0000010";      diccionario['y']="0000001";
	diccionario['v']="00000001";     diccionario['j']="000000001";
	diccionario['k']="0000000001";   diccionario['x']="00000000001";
	diccionario['q']="000000000001"; diccionario['z']="000000000000";
	return diccionario;
}

map<string,string> init_hexdict(){
	map<string,string> hexdict;
	hexdict["0000"]="0";  hexdict["0001"]="1";
	hexdict["0010"]="2";  hexdict["0011"]="3";
	hexdict["0100"]="4";  hexdict["0101"]="5";
	hexdict["0110"]="6";  hexdict["0111"]="7";
	hexdict["1000"]="8";  hexdict["1001"]="9";
	hexdict["1010"]="A";  hexdict["1011"]="B";
	hexdict["1100"]="C";  hexdict["1101"]="D";
	hexdict["1110"]="E";  hexdict["1111"]="F";
	return hexdict;
}

void bintohex(string code){
	map<string,string>hexdict=init_hexdict();
	string codehex;
	int i;
	if(code.length()%8!=0){
		code=code+string(8-code.length()%8,'0');
	}
	for(i=0;i<code.length();i+=4){
		codehex=codehex+hexdict[code.substr(i,4)];
		if(((i-4)%8==0)&&(i!=0)){
			codehex=codehex+" ";
		}
	}
	cout<<codehex;
}

void codificar(char *ptr){
	string code;
	int i;
	map<char,string>diccionario=init_dict();
	for(i=0;i<=strlen(ptr)-1;i++){
		code=code+diccionario[ptr[i]];
	}
	bintohex(code);
}

int main(void){
	char msj[500];
	cin.getline(msj,500);
	codificar(msj);
	return 0;
}
