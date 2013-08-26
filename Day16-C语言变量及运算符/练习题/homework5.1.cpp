// homework5.1.cpp : Defines the entry point for the console application.
/*编写一个程序，程序能完成输出变量值的功能：定义所有基本数据类型的变量并初始化变量的值，
然后输出各变量的值；再改变各变量的值重新输出。*/

#include "stdafx.h"
#include <conio.h>


int _tmain(int argc, _TCHAR* argv[])
{
	int nA=0;//整型变量初始值
	float fB=0;//浮点型变量初始值
	char chC='A';//字符型变量初始值

	printf("整型变量为%d,浮点型变量为%f,字符型变量为%c\n",nA,fB,chC);

	printf("请输入整型变量值：");//整型变量重新赋值
	scanf("%d",&nA);

    printf("请输入浮点型变量值：");//浮点型变量重新赋值
	scanf("%f",&fB);

	fflush(stdin);
	printf("请输入字符型变量值（字母）：");//字符型变量重新赋值
	scanf("%c",&chC);

	printf("整型变量为%d,浮点型变量为%f,字符型变量为%c\n",nA,fB,chC);


	_getch();
	return 0;
}

