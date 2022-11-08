#include <iostream>
#include "ncs.h"
using namespace std;
int main(){
string s;
int a;
int b;
cout << "ENTER TEXT TO BE CONVERTED: ";
cin >> s;
cout << "ENTER BASE TO BE CONVERTED FROM: ";
cin >> a;
cout << "ENTER BASE TO BE CONVERTED TO: ";
cin >> b;
convertBase(s,a,b);
return 0;
}
