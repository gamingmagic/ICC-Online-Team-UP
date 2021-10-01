
#include<iostream>
#include<stdlib.h>
using namespace std;

int main()
{
int enter1, enter2, sumdin, diffdin, productdin;
system("CLS");
cout<<"Enter 1st number:\n";
cin>>enter1; 
cout<<"Enter 2nd number:\n"; 
cin>>enter2; 
sumdin = enter1 + enter2;
diffdin =  enter1 / enter2;
productdin = enter1 * enter2;
system("CLS");
cout<<"The sum of the two numbers is "<<sumdin<<".\n";

cout<<"The difference of the two numbers is "<<diffdin<<".\n";

cout<<"The product of the two numbers is "<<productdin<<".\n";

   system("pause");
return 0;
 }
