//
//  myarray.c
//  cCodeDay18
//
//  Created by liu on 13-8-29.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>

//实现 myarray.h 头文件中定义的函数
//演示如何终止程序
void function1()
{
    //死循环，耗尽内存
    while (2>1) {
        printf("Hello, World!\n");
        //手动停止整个程序
        //break;   //停止一个代码块
        exit(-1);  //彻底停止整个程序
    }
    
    printf("hhahahah \n");
}

//演示如何定义数组，并给数组赋值
void CreateArray()
{
    //定义一个数组
    //工作年限
    int workYears[50];
    
    
    printf("年限 workYears[%d] = %d \n",0,workYears[0]);
    
    //手动赋值，一个一个的赋值
    //workYears[0] = 1;
    //workYears[1] = 2;
    //....
    //workYears[49]=50;
    
    
    
    printf("-------自动赋值---------- \n");
    for (int i=0; i<50; i++) {
        //给数组中元素赋值
        workYears[i]=(i+1);
        
        printf("年限 workYears[%d] = %d \n",i,workYears[i]);
    }
    
    printf("--------手动赋值---------\n");
    for (int i=0; i<50; i++) {
        printf("请输入一个数字 \n");
        int temp = 0;
        scanf("%d",&temp);
        
        workYears[i] = temp;
        printf("年限 workYears[%d] = %d \n",i,workYears[i]);
    }
    
    
    //一次性赋值
    //workYears = 10;
}


//初始化数组
void InitArray(){
    //工资
    //定义时直接赋值
    //数组长度由两个部分决定
    //如果 workSalary[10]  [] 有长度，由[]决定长度
    //如果 workSalary[]    [] 无数字，由{}值的个数决定长度
    double workSalary[10]={2500.0,2800.0,3200.0,3500.0,3800.0,4500.0,5000.0,6000.0,7000.0,8000.0,9000.0};
    for (int i=0; i<11; i++) {
        printf("workSalary[%d] = %f \n",i,workSalary[i]);
        
    }
    
     int a = 20;   //变量
    double arr[a]; //数组长度不允许是变量
    
    
}







