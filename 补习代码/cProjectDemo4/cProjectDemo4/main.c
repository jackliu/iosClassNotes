//
//  main.c
//  cProjectDemo4
//
//  Created by liu on 13-9-25.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
#include "StringDemo.h"

int main(int argc, const char * argv[])
{
    // insert code here...
    //strDemo2();
    //demo5();
    
    //通过函数名(助记名)调用函数
    demo6();
    
    int a =10;
    int *p = &a;   //专门为 普通变量 定义的一个指针
    
    //知道函数在内存中是连续的，通过首地址就可以访问连续内存
    //专门为函数定义一个指针，格式与函数一样，名字是指针
    //定义了一个指针函数的变量名 p6
    // p6 指针可以指向所有 具有相同格式的函数
    void (*p6)();
    //把函数首地址赋值给 p6
    p6 = demo6;
    
    //通过指针调用函数
    (*p6)();
    
    p6 = demo5;
    (*p6)();
    
    //用同一个指针，代表所有具有相同格式的函数，对他们进行调用
    
    
    return 0;
}








