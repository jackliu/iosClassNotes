// homework5.3.cpp : Defines the entry point for the console application.
/*1��ˮ���ӵ�����ԼΪ3.0��10-23g,1����ˮ��Լ��950g����дһ������Ҫ������ˮ�Ŀ�������
Ȼ����ʾ��ô��ˮ�а������ٸ�ˮ���ӡ�*/

#include "stdafx.h"
#include <conio.h>
#include <math.h>
#define M 950//1����ˮ��Լ��950g

int _tmain(int argc, _TCHAR* argv[])
{
	float fMath=pow(3.0,-23);
	float fIn=0;//����ˮ�Ŀ�����
	float fOut=0;//�����ˮ������

	printf("������ˮ�Ŀ�������");
	scanf("%f",&fIn);
	fOut=fIn*M/fMath;
	printf("%f���ѵ�ˮ����%e��ˮ����\n",fIn,fOut);
	
	
	_getch();
	return 0;
}

