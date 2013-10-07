// homework5.3.cpp : Defines the entry point for the console application.
/*1个水分子的质量约为3.0×10-23g,1夸脱水大约有950g。编写一个程序，要求输入水的夸脱数，
然后显示这么多水中包含多少个水分子。*/

#include "stdafx.h"
#include <conio.h>
#include <math.h>
#define M 950//1夸脱水大约有950g

int _tmain(int argc, _TCHAR* argv[])
{
	float fMath=pow(3.0,-23);
	float fIn=0;//输入水的夸脱数
	float fOut=0;//输出的水分子数

	printf("请输入水的夸脱数：");
	scanf("%f",&fIn);
	fOut=fIn*M/fMath;
	printf("%f夸脱的水包含%e个水分子\n",fIn,fOut);
	
	
	_getch();
	return 0;
}

