//
//  main.c
//  cCode29
//
//  Created by liu on 13-9-12.
//  Copyright (c) 2013年 liu. All rights reserved.
//
//系统标准输入、输出库
#include <stdio.h>
//系统标准函数库
#include <stdlib.h>
//导入字符串处理库
#include <string.h>

//导入作业的头文件
#include "homeWork.h"


int main(int argc, const char * argv[])
{
    /*
    //定义一个指针变量
    int *p;   //基本类型指针，没有分配空间
    //调用函数，手动分配空间
    p = (int *)malloc(sizeof(int));
    //上一句话运行完毕，可能有两种结果
    //结果一 成功分配了制定长度的内存空间，我们直接使用
    //结果二 分配失败，返回 NULL
    //使用 malloc() 函数，一定带上
    if (p == NULL) {
        printf("内存分配失败 \n");
        exit(-1);
    }
    
    //其他操作
    p++;
    
    //使用完毕，在同一个作用域中，记得释放所分配的内存
    //释放完毕  p 所指向的内存地址由系统随机分配
    free(p);
    //为了防止出现下面还要使用 p 指针，防止野指针
    p = NULL;
    //p = 0;
    p++;
    */

    //printf("Hello, HomeWork!\n");
    //work1();
    
    /*
    //定义字符串，测试 格式对齐
    char *str;
    str = (char *)malloc(100); //分配 100个字符的空间
    if ( NULL == str ) {
        exit(-1);
    }
    
    //1  2  3
    //h  e  l  l  o
    //str = "hello World"; //实际使用 12 个字符空间
    //- 让字符串右对齐，在 100 的内存空间中
    //96 97   98  99  100
    //W   o   r   l    d
    //printf("%-12s",str);
    
    printf("%.3lf",123.78457348783);
    
    //释放内存空间
    free(str);
    str = NULL;
    */
    
    /*
    //输入输出单个字符
    int gc = getchar();  //输入单个字符
    printf("输入的字符是 \n"); //输出多个字符
    putchar(gc);  //输出单个字符
    
    //输入输出多个字符
    char *strr = NULL;
    strr = (char *)malloc(100);
    scanf("%s",strr);
    printf("输入的字符串为 %s \n",strr);   
    */
    
    /*
    //做文件操作，第一步看文件是否存在
    FILE *file;
    //指定文件路径，打开文件
    file = fopen("/Users/liu/Documents/aaa.txt", "r");
    //判断程序是否找到文件
    if (NULL == file) {
        printf("文件路径错误，请重新指定 \n");
        exit(-1);  //stdlib.h
    }
    printf("文件路径正确，请接着对文件进行读写操作 \n");
    
    
    char name[20];
    int pwd;
    
    //fscanf(file, "id=%d",&pwd);
    //printf("pwd = %d \n",pwd);
    
    fscanf(file, "name=%5s password=%d",name,&pwd);
    fclose(file);
    printf("name = %s , pwd = %d \n",name,pwd);
    */
    
    
    /*
    //字符指针
    char str[]="name=marry password=1234";
    char name[20];
    int pswd;
    
    sscanf(str, "name=%s password=%d",name,&pswd);
    printf("name = %s , pwd = %d \n",name,pswd);
    
    sprintf(str, "%s \'s pwd is %d",name,pswd);
    printf("%s \n",str);
    */
    
    
    FILE *fp;
    FILE *fo;
    char ch;
    if ((fp = fopen("/Users/liu/Documents/aaa.txt", "rt"))==NULL)
    {
        exit(-1);
    }
    
    
    if ((fo = fopen("/Users/liu/Documents/bbb.txt", "w"))==NULL)
    {
        exit(-1);
    }
    
    ch = fgetc(fp);
    /*
    while (!feof(fp)) {
        fputc(fgetc(fp), fo);
    }
    */
    while (ch != EOF) {
        putchar(ch);
        fputc(ch, fo);
        ch = fgetc(fp);
    }
    fclose(fp);
    
    
    
    return 0;
}



void ff()
{
    //free(p);
}





