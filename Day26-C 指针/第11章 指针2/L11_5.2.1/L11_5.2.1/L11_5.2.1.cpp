// L11_5.2.1.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <conio.h>

#define SIZE 10
void ScanfPrintf(int _a[][SIZE],int _n);
void Com(int _a[][SIZE],int* p1,int* p2,int _n);
void ScanfPrintf(int _a[][SIZE],int _n)
{
	for(int i=0;i<_n;i++)
	{
		for(int j=0;j<_n;j++)
		{
			printf("�������%d�е�%d������",i+1,j+1);
			scanf("%d",&_a[i][j]);
		}
	}
	printf("\n����Ϊ��\n\n");
	for(int i=0;i<_n;i++)
	{
		for(int j=0;j<_n;j++)
		{
			printf("%d ",_a[i][j]);
		}
		printf("\n");
	}
}

void Com(int _a[][SIZE],int* p1,int* p2,int _n)
{
	for(int i=0;i<_n;i++,p1++,p2++)
	{	
		*p1=_a[i][0];
		*p2=i;
		for(int j=0;j<_n;j++)
		{
			if(*p1<=_a[i][j])
				*p1=_a[i][j];
		}
	}
	p1=p1-_n;
	p2=p2-_n;
	printf("\n���:\n\n");
	for(int i=0;i<_n;i++,p1++,p2++)
		printf("%d\t%d\t(���%d���ڵ�%d��)\n",*p1,*p2,*p1,*p2+1);
}
int _tmain(int argc, _TCHAR* argv[])
{
	int n;
	int arrInt[SIZE][SIZE];
	int arrMax[SIZE];
	int arrLine[SIZE];
	
	printf("������һ��n��n �Ķ�ά�����е�n�Ƕ��٣�");
	scanf("%d",&n);
	
	ScanfPrintf(arrInt,n);
	Com(arrInt,arrMax,arrLine,n);
	
	_getch();
	return 0;
}

