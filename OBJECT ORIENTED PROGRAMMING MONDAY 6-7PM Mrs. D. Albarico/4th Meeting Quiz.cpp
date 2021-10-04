#include<iostream>
#include<stdlib.h>
using namespace std;

int main()
{
int answer1,answer2,answer3,answer4,answer5;
int a=2;
int b=3;
int c=4;
int d=5;
system("CLS");

answer1 = ((c*c)*(a*a));
answer2 = ((a*a)*(c*c*c))+d;
answer3 = (c*d)/(d-a);
answer4 = ((c*2)/(a*a))+(b*c);
answer5 = ((a*b)/(c-a))/(b*b);

cout<<"((c*c)*(a*a)";
cout<<"The answer1 "<<answer1<<".\n";

cout<<"((a*a)*(c*c*c))+d";
cout<<"The answer2 "<<answer2<<".\n";

cout<<"(c*d)/(d-a)";
cout<<"The answer3 "<<answer3<<".\n";

cout<<"((c*2)/(a*a))+(b*c)";
cout<<"The answer4 "<<answer4<<".\n";

cout<<"((a*b)/(c-a))/(b*b)";
cout<<"The answer5 "<<answer5<<".\n";
   system("pause");
return 0;
 }
