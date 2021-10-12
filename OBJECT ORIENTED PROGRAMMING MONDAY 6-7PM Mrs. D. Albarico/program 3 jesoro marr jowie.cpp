/* jesoro marr jowie
cp 2021 - 2021-10-12
3. program*/
#include <iostream>
#include <conio.h>
#include <string>
#include <stdlib.h>
using namespace std;

main()
{
	string symbol,symbol2,symbol3;
	system("clear");

    do
    {
    	cout<<"Enter two intials, without any period\n";
		cin>>symbol>>symbol2;
		cout<<"the two initials are:\n"<<symbol<<symbol2<<endl;
		symbol3 =' ';
		cout<<"one more with a space:\n"<<symbol<<symbol3<<symbol2<<endl; 
		cout<<"that's all"; break;
    } while(symbol.find('.')||symbol2.find('.') );
    getch();
    return 0;
}
    /*
            
            
    
 */
