
#include<iostream>
#include<stdlib.h>
using namespace std;
int main()
{
int firstgrade, secondgrade, thirdgrade, avegrade;
system("clear"); 
cout<<"Enter 1st Grade: \n";
cin>>firstgrade; 
cout<<"Enter 2nd Grade: \n"; 
cin>>secondgrade;
cout<<"Enter 3rd Grade: \n";
std::cin>>thirdgrade;

avegrade = (firstgrade+secondgrade+thirdgrade)/3;
system("CLS"); 
cout<<"Enter 1st exam grade:"<<firstgrade<<".\n";

cout<<"Enter 2nd exam grade: "<<secondgrade<<".\n";

cout<<"Enter 3rd exam grade:"<<thirdgrade<<".\n";

cout<<"The average is: "<<avegrade<<".\n";
system("pause");
return 0;
 }


