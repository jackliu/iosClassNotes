// homework5.2.cpp : Defines the entry point for the console application.
/*编写一个程序，读入一个浮点数，并分别以小数形式和指数形式打印。输出应如同下面格式： 
The input is 21.90000 or 2.19000e+001.*/

#include "stdafx.h"
#include <conio.h>


int _tmain(int argc, _TCHAR* argv[])
{
	float fA;//浮点数

	printf("请输入一个浮点数：");
	scanf("%f",&fA);
	printf("The input is %f or %e.",fA,fA);
	
	
	_getch();
	return 0;
}

