/* jesoro marr jowie
cp 2021 - 2021-10-12
2. program*/
#include <iostream>
#include <conio.h>
#include <stdlib.h>
#include <string>
#include <limits>
using namespace std;


int main()
{
	int a,b,c,d,ave;
    system("clear");
    do
    {
		cout<<"enter 1st exam grade\n";
		cin>>a;
  		cout<<"enter 2nd exam grade\n";
		cin>>b;
		cout<<"enter 3rd exam grade\n";
		cin>>c;
		cout<<"enter 4rt exam grade\n";
		cin>>d;
		ave = (a+b+c+d)/4;
		cout<<"the average grade is "<< ave <<".\n";
		
	if (cin.fail())
	{
		
     cout << "Please enter an number";
     cin.clear();
     cin.ignore(numeric_limits<streamsize>::max(), '\n');
     break;
	}
	
    } while(a==0 || b==0|| c==0|| d==0 );
    getch();
    return 0;
}
    /*
            
            
    
 */
