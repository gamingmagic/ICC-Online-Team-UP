/* jesoro marr jowie
cp 2021 - 2021-10-12
1. program*/
#include <iostream>
#include <conio.h>
#include <stdlib.h>
#include <limits>
using namespace std;

int main()
{
    system("clear");
    char a[6];
    int b;
    do
    {
        cout<<"Enter your name\n";
        cin>>a;
        cout<<"Enter your Age\n";
        cin>>b;
        	if (cin.fail())
	{
		
     cout << "Please enter an number on age.";
     cin.clear();
     cin.ignore(numeric_limits<streamsize>::max(), '\n');
     break;
	}
	
        cout<<"my name is "<<a<<"\n";
		cout<<"im "<<b<<" years old\n";
    } while(a==0 || b==0);
    getch();
    return 0;
}
    /*
            
            
    
 */
