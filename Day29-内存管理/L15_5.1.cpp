// L15_5.1.cpp : �������̨Ӧ�ó������ڵ㡣
//

#include "stdafx.h"
#include <conio.h>
#include <string.h>


int _tmain(int argc, _TCHAR* argv[])
{
	FILE *fp;
	char p[30][30]={};
	char p1[30][30]={};
	char m[30]={};
	char n[30]={};
	char c='y';
	int i=0;
	printf("�������ļ�������β�ǡ�.txt������");
	gets(n);
	fp=fopen(n,"w+");
	if(fp==NULL)
		perror("error!");
	else
		while((c!='n')&&(c!='N'))
		{
			fflush(stdin);
			printf("�������ַ�����");
			gets(p[i]);
			fwrite(p[i],sizeof(char),30,fp);
			i++;
			printf("���������ַ��������롰y�����������롰n����");
			c=getchar();
		}

	rewind(fp);
	i=0;
	fflush(stdin);
	printf("\n������Ҫ��ѯ���ַ���:");
	gets(m);

	while(fread(n,sizeof(char),30,fp)!=0)
	{
		if(strstr(n,m)!=NULL)
		{
			strcpy(p1[i],n);
			printf("%s\n",p1[i]);
			i++;
		}
		else
		{
			i++;
		}
	}
	

	
	fclose(fp);
	_getch();
	return 0;
}

