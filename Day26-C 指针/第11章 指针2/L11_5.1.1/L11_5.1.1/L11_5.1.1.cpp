// L11_5.1.1.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <conio.h>

#define SIZE 1000
void MemSet(int* p1,int* p2,int _n);
void PrintfArr(int _a[],int _n);

void MemSet(int* p1,int* p2,int _n)
{
	for(int i=0;p1<=p2;i++,p1++)
		*p1=_n;
}

void PrintfArr(int _a[],int _n)
{
	for(int i=0;i<_n;i++)
		printf("%d ",_a[i]);
}
int _tmain(int argc, _TCHAR* argv[])
{
	int arrInt[SIZE];
	int nLen;
	int nNum=0;
	printf("�����趨һ�����顷\n�����й��м������֣�");
	scanf("%d",&nLen);
	for(int i=0;i<nLen;i++)
	{
		printf("�������%d��ֵ��",i+1);
		scanf("%d",&arrInt[i]);
	}

	printf("������Ҫͳһ��ֵ���٣�");
	scanf("%d",&nNum);
	
	printf("\nԭ����Ϊ��\n");
	PrintfArr(arrInt,nLen);

	MemSet(arrInt,arrInt+nLen-1,nNum);
	
	printf("\n��ֵ������Ϊ��\n");
	PrintfArr(arrInt,nLen);
	
	_getch();
	return 0;
}

