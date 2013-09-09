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
	printf("《请设定一个数组》\n数组中共有几个数字？");
	scanf("%d",&nLen);
	for(int i=0;i<nLen;i++)
	{
		printf("请输入第%d个值：",i+1);
		scanf("%d",&arrInt[i]);
	}

	printf("请输入要统一赋值多少？");
	scanf("%d",&nNum);
	
	printf("\n原数组为：\n");
	PrintfArr(arrInt,nLen);

	MemSet(arrInt,arrInt+nLen-1,nNum);
	
	printf("\n赋值后数组为：\n");
	PrintfArr(arrInt,nLen);
	
	_getch();
	return 0;
}

