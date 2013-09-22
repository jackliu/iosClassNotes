//
//  main.c
//  cProjectDemo2
//
//  Created by liu on 13-9-22.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>

//程序从上往下依次执行，所有的函数必须在调用之前声明，声明不需要实现
void demo1();
void demo2();
void demo3();

int main(int argc, const char * argv[])
{
    //流程控制语句：类似于 汽车方向盘，刹车，油门等
    //程序类似于汽车前进，不可能每次都是从第一句话一直运行到最后一句话
    //控制程序运行过程中 分支、循环、终止 功能的语句叫流程控制语句
    //分支语句
    //demo1();
    //demo2();
    //demo3();
    
    //循环语句，重复相同的步骤，根据不同的循环条件，得到不同的结果
    //求从 1 加到 100 的值
    int sum = 0;  //结果
    //for 循环的组成： 初始条件、终止条件、增长量、循环体
    for (int i=1; i<=100; i++) {
        printf("sum +i  = %d + %d \n",sum,i);
        sum = sum +i;
    }
    printf("最终结果为 sum = %d \n",sum);
    
    
    return 0;
}



/*
 函数：把多行代码，放在一个 {} 空间中，与其他的代码分割开
 函数的组成：
 函数返回值类型  函数名 (函数参数){函数体 }
 (1)函数名
 (2)函数参数
 (3)函数体
 (4)函数返回值类型
 
 int 函数名(int a,char b,double c){  函数多行代码  }
 */
void demo1()
{
    //二选一
    unsigned int num;
    printf("请输入一个整数  \n");  //提示信息
    scanf("%d",&num);  //把用户输入的整数 %d，存入&取出的num内存地址中
    if (num > 60)
    {
        printf("恭喜，成绩及格  \n");
    }
    else
    {
        printf("成绩不及格，需要加油  \n");
    }
}


void demo2()
{
    //二选一
    unsigned int num;
    printf("请输入一个整数  \n");  //提示信息
    scanf("%d",&num);  //把用户输入的整数 %d，存入&取出的num内存地址中
    //N选一
    if (num > 60)
    {
        printf("恭喜，成绩及格  \n");
        if (num <70) {
            printf("D \n");
            return;   //这里终止程序，后面的代码就不会执行
        }
        if (num <80) {
            printf("C \n");
            return;
        }
        if (num <90) {
            printf("B \n");
            return;
        }
        if (num <=100) {
            printf("A \n");
            return;
        }
    }
    else
    {
        printf("成绩不及格，需要加油  \n");
    }
    
}

void demo3()
{
    //二选一
    unsigned int num;
    printf("请输入一个整数  \n");  //提示信息
    scanf("%d",&num);  //把用户输入的整数 %d，存入&取出的num内存地址中
    //N选一
    
    switch ((int)num/10) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
            printf("不及格  \n");
            break;
        case 6:
            printf("D  \n");
            break;
        case 7:
            printf("C  \n");
            break;
        case 8:
            printf("B  \n");
            break;
        case 9:
            printf("A  \n");
            break;
        case 10:
            printf("A+  \n");
            break;
        default:
            printf("输入错误 \n");
            break;
    }
    
}








