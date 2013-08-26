//
//  main.c
//  cCode16
//
//  Created by liu on 13-8-26.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    // insert code here...
    /*
    printf("练习一，查看各种类型在内存中的长度 !\n");
    //把 int 类型在内存中的长度赋值给 整数
    int intSize = sizeof(int);
    printf("int 类型占 %d  字节,二进制 %d 位 \n",intSize,intSize*8);
    //char
    int charSize = sizeof(char);
    printf("char 类型占 %d  字节,二进制 %d 位 \n",charSize,charSize*8);
    //float
    int fSize = sizeof(float);
    printf("float 类型占 %d  字节,二进制 %d 位 \n",fSize,fSize*8);
    //double
    int dSize = sizeof(double);
    printf("double 类型占 %d  字节,二进制 %d 位 \n",dSize,dSize*8);
    */
    
    /*
    printf("练习二：掌握基本输入、输出函数 \n");
    //程序在这一行，停止，等待用户输入
    //输入 a-z  A-Z
    int ch = getchar();
    
    printf("%d \n",ch);
    printf("%c \n",ch);
    //打印  ch 对应的字符或词组
    putchar(ch);
    */
    
    
    //输入一个年份，判断是否是闰年
    printf("请输入一个年份 \n");
    int year;
    scanf("%d",&year);
    
    
    
    
    
    return 0;
}

