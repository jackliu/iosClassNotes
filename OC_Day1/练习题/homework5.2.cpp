// homework5.2.cpp : Defines the entry point for the console application.
/*��дһ�����򣬶���һ�������������ֱ���С����ʽ��ָ����ʽ��ӡ�����Ӧ��ͬ�����ʽ�� 
The input is 21.90000 or 2.19000e+001.*/

#include "stdafx.h"
#include <conio.h>


int _tmain(int argc, _TCHAR* argv[])
{
	float fA;//������

	printf("������һ����������");
	scanf("%f",&fA);
	printf("The input is %f or %e.",fA,fA);
	
	
	_getch();
	return 0;
}

