#include<iostream.h>
#include<conio.h>
void main()
{
int number_of_pods, peas_per_pod, total_peas;
clrscr();
cout<<"Enter the number of pod:\n";
cin>>number_of_pods;
cout<<"Enter the number of peas in a pod:\n";
cin>>peas_per_pod;
total_peas = number_of_pods * peas_per_pod;
cout<<" If you have ";
cout<<number_of_pods;
cout<<" peas pod \n ";
cout<<" and ";
cout<< peas_per_pod;
cout<<" peas in each pod, then \n ";
cout<<" You have ",total_peas,"peas in all pod":;
getch ();
}
