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


int main(int argc, const char * argv[])
{
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
    
    
    //使用完毕，在同一个作用域中，记得释放所分配的内存
    //释放完毕  p 所指向的内存地址由系统随机分配
    free(p);
    //为了防止出现下面还要使用 p 指针，防止野指针
    p = NULL;
    //p = 0;
    
    
    printf("Hello, World!\n");
    
    
    
    return 0;
}



void ff()
{
    //free(p);
}





