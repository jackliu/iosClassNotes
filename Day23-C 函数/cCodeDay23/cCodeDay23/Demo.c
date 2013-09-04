//
//  Demo.c
//  cCodeDay23
//
//  Created by liu on 13-9-4.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>


//定义
int a =10;
static int num=0;
const double PI=3.1415926;//不赋值，默认是 0
/*
//代码
int s= a+19;  //表达式
if(a >10){    //流程控制
    
}
*/
 
void show(){
    
    int b =10;
    for (int b =0; b<10; b++) {
        //调用离使用变量最近的局部变量
        //printf("%d",b);
        num += b;
    }
    
    
    printf("static num  = %d \n",num);
}


int add(int i,int j)
{
    printf("static num  = %d \n",num);
    return i+j;
}



void addConstPI(){
    for (int i=0; i<10; i++) {
        //PI+=i;  //Read-Only
    }
    
    
    double area = 12*12*PI;
    
    
}


