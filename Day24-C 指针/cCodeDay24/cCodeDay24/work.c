//
//  work.c
//  cCodeDay24
//
//  Created by liu on 13-9-5.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>


void work1()
{
//(1)	定义一个double类型的指针head，并初始化为NULL
    double *head;
    head  = NULL;    //初始化指针的地址为NULL，防止出现野指针问题
    //野指针：知道指针变量名 head，但是不知道具体指向哪个内存地址
    
    
//(2)	定义一个double类型的变量salary，并初始化为8000.75，让head指向salary
    double salary= 8000.75;
    //把 salary 地址取出放入 head中
    head = &salary;
    
//(3)	使用&显示变量salary所占内存的地址值。
    printf("salary 所占内存地址  %p \n",&salary); //地址
    
//(4)	使用head显示salary所占内存的地址值。
    printf("head 指针显示 salary 内存地址 %p \n",head);//与上同
    
//(5)	分别通过salary本身和head显示变量salary的值
    printf("通过 salary 本身显示值 %lf  \n",salary);//8000.75
    printf("通过 head指针显示值  %lf  \n",*head); //8000.75
    
//(6)	再定义一个double类型的指针tail，并初始化为NULL。
    double *tail;
    tail = NULL;
    
//(7)	通过赋值的方式，让tail也指向salary，要求使用指针间赋值完成操作
    tail = head;
    
//(8)	显示指针变量tail的值。
    printf("指针变量 head 的值为 %p  \n",head);//同上地址
    printf("指针变量 tail 的值为 %p  \n",tail);//同上地址
    
//(9)	通过tail显示所指变量的值。
    printf("tail 所指的值为  %lf  \n",*tail); //8000.75
    
//(10)	通过tail修改salary的值为3023.25。
    *tail = 3023.25;
    
    printf("salary 值为   %lf  \n",salary); //3023.25
    
//(11)	通过head显示所指变量的值
    printf("*head  值为   %lf  \n",*head); //3023.25
    
    
//(12)	定义一个int类型的变量age，初始化为28。
    int age = 28;
    
    
//(13)	将age的地址赋值给head，即使head重新指向age，查看执行结果。
    head = &age;
    printf("-----head 的值为 %p  \n",head);
    printf("-----*head 的值为 %lf  \n",*head);
    
    
//(14)	通过tail将变量salary的值加100。
    *tail+=100;
    
//(15)	使用salary显示变量的值。
     printf("salary 值为   %lf  \n",salary);//3123.25
    
//(16)	使用sizeof显示head、tail、salary的大小
    printf("head 大小 %ld \n",sizeof(head));     //8
    printf("tail 大小 %ld  \n",sizeof(tail));    //8
    printf("salary 大小 %ld \n",sizeof(salary)); //8
    
    
}


/*
 编写一个程序，程序能使用指针完成输出变量值的功能：定义所有基本数据类型的变量并初始化变量的值，然后定义所有基本数据类型的指针并使用指针输出各变量的值；再使用指针改变各变量的值，使用变量重新输出。
 */
void work2(){
    //(1)  定义所有基本数据类型的变量并初始化变量的值
    int a = 10;
    long b = 10000l;
    float c = 32.6f;
    double d = 344.90;
    char e ='u';
    
    //(2) 定义所有基本数据类型的指针并使用指针输出各变量的值
    int *p1 = &a;
    long *p2 = &b;
    float *p3 = &c;
    double *p4 = &d;
    char *p5 = &e;
    printf("a 的值为 %d  \n",*p1);
    printf("b 的值为 %ld  \n",*p2);
    printf("c 的值为 %f  \n",*p3);
    printf("d 的值为 %lf  \n",*p4);
    printf("e 的值为 %c  \n",*p5);
    
    //(3) 使用指针改变各变量的值，使用变量重新输出
    *p1 = 46;
    *p2 = 8898l;
    *p3 = 454.7f;
    *p4 = 787.33;
    *p5 = '@';
    
    printf("a 的值为 %d  \n",*p1);
    printf("b 的值为 %ld  \n",*p2);
    printf("c 的值为 %f  \n",*p3);
    printf("d 的值为 %lf  \n",*p4);
    printf("e 的值为 %c  \n",*p5);
    
    
}















