// L11_5.3.1.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <conio.h>
#define N 10
void reverse(int* a)
{	
    int i, j, t;
	   for (i=0,j=N-1;i<j; i++, j--)
	   {
		   t=*(a+i);
		   *(a+i)=*(a+j);
		   *(a+j)=t;
	   }
}

int _tmain(int argc, _TCHAR* argv[])
{
	int i, b[N]={98,76,68,65,57,53,45,43,32,29};
	int* p=b;
	
    reverse(p);
	
    for (i=0;i<N; i++)
		   printf("b[%d]=%d\n", i, *(p+i));
	
	
	
	_getch();
	return 0;
}

