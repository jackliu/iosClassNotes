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
			printf("请输入第%d行第%d个数：",i+1,j+1);
			scanf("%d",&_a[i][j]);
		}
	}
	printf("\n数组为：\n\n");
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
	printf("\n结果:\n\n");
	for(int i=0;i<_n;i++,p1++,p2++)
		printf("%d\t%d\t(最大%d，在第%d行)\n",*p1,*p2,*p1,*p2+1);
}
int _tmain(int argc, _TCHAR* argv[])
{
	int n;
	int arrInt[SIZE][SIZE];
	int arrMax[SIZE];
	int arrLine[SIZE];
	
	printf("请输入一个n×n 的二维数组中的n是多少？");
	scanf("%d",&n);
	
	ScanfPrintf(arrInt,n);
	Com(arrInt,arrMax,arrLine,n);
	
	_getch();
	return 0;
}

