// homework5.1.cpp : Defines the entry point for the console application.
/*��дһ�����򣬳���������������ֵ�Ĺ��ܣ��������л����������͵ı�������ʼ��������ֵ��
Ȼ�������������ֵ���ٸı��������ֵ���������*/

#include "stdafx.h"
#include <conio.h>


int _tmain(int argc, _TCHAR* argv[])
{
	int nA=0;//���ͱ�����ʼֵ
	float fB=0;//�����ͱ�����ʼֵ
	char chC='A';//�ַ��ͱ�����ʼֵ

	printf("���ͱ���Ϊ%d,�����ͱ���Ϊ%f,�ַ��ͱ���Ϊ%c\n",nA,fB,chC);

	printf("���������ͱ���ֵ��");//���ͱ������¸�ֵ
	scanf("%d",&nA);

    printf("�����븡���ͱ���ֵ��");//�����ͱ������¸�ֵ
	scanf("%f",&fB);

	fflush(stdin);
	printf("�������ַ��ͱ���ֵ����ĸ����");//�ַ��ͱ������¸�ֵ
	scanf("%c",&chC);

	printf("���ͱ���Ϊ%d,�����ͱ���Ϊ%f,�ַ��ͱ���Ϊ%c\n",nA,fB,chC);


	_getch();
	return 0;
}

