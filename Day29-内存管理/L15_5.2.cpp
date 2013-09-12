// L15_5.2.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <conio.h>


int _tmain(int argc, _TCHAR* argv[])
{
	FILE* fp;
	int a[10][10];
	int a1[10][10];

	for(int i=0;i<10;i++)
	{
		for(int j=0;j<=i;j++)
		{
			if(j==0||i==j)
				a[i][j]=1;
			else
				a[i][j]=a[i-1][j]+a[i-1][j-1];
		}
	}

	fp=fopen("test.txt","w+");
	if(fp==NULL)
		perror("error!");
	else
	{
		for(int i=0;i<10;i++)
		{
			for(int j=0;j<=i;j++)
			{
				fprintf(fp,"%d\t",a[i][j]);
			}
			fprintf(fp,"\n");
		}
	}

	rewind(fp);
	for(int i=0;i<10;i++)
		{
			for(int j=0;j<=i;j++)
			{
				fscanf(fp,"%d\t",&a1[i][j]);
			}
			fscanf(fp,"\n");
		}

	for(int i=0;i<10;i++)
	{
		for(int j=0;j<=i;j++)
		{
			printf("%d\t",a1[i][j]);
		}
		printf("\n");
	}
	
	fclose(fp);
	_getch();
	return 0;
}

