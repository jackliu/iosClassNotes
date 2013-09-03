//
//  code.c
//  cCodeDay22
//
//  Created by liu on 13-9-3.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>

//程序运行到这里， a 没有出现过
//printf("a = %d \n",a);

int a = 15;

//打印一个循环中的内容
//查看变量是否被打印，确定变量的作用域
//能够被打印，作用域有效
void show()
{
    //printf("a = %d \n",a);
    
    //a  在哪个{} 中被定义
    //a 的作用域从 24 行 ;开始，到 33 } 之前结束
    int a = 0;
    
    for (int i=0; i<10; i++) {
        //局部变量
        int a = 2;
        //a 的作用域
        printf("a = %d \n",a);  //2
    }
    
    //a 的作用域
    printf("a = %d \n",a);  //0
}

//a 的作用域
//printf("a = %d \n",a);



//演示参数传递
void print(int num)
{
    //int a 参数说明 {} 内没有 a 变量，可以从外部传递一个过来
    num++;
    printf("num  = %d \n",num);
}










