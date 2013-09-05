//
//  pointerDemo.c
//  cCodeDay24
//
//  Created by liu on 13-9-5.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>


void demo1()
{
    printf("Demo 1 如何得到内存地址!\n");
    int num = 100;    //普通变量，方便记忆的名字
    
    //通过 &  特殊符号，取出变量对应(指向的) 100 所在的内存地址
    printf(" 100 存放在内存的哪个位置 %ld \n",&num);
    //内存地址的类型是  unsigned long int
    unsigned long int address = &num;
    
    printf(" 100 存放在内存的哪个位置 %ld \n",address);
    
    printf("内存地址在内存中所占的长度  %ld \n",sizeof(unsigned long int));
    
}

void demo2()
{
    
    printf("Demo2  如何保存内存地址  \n");
    int num2 = 150;
    int *pointer;    //定义一个特殊的变量，用 * 表示 指针变量
    
    
    //给指针变量赋值, 指针变量就是 * 后面的变量，存放内存地址
    pointer = &num2;
    
    
    printf(" 150  存放在内存中哪个位置 %ld  \n",pointer);
    printf("指针变量的内存地址值，内存中所占长度为  %ld \n",sizeof(pointer));

}

void demo3()
{
    printf("Demo3 演示如何得到 char 类型的地址  \n");
    char c = 'V';
    char *pointer;   //* 前面的类型，与真正存入内存地址值的类型相同  'V'  --> char
    pointer = &c;   //去掉 * 的部分 pointer ，存放的是地址
    
    printf("Address 地址      %ld  \n",pointer);
    printf("*(Address 地址)   %c \n",*pointer);
    
    
    
    
}










