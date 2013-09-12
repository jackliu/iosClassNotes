//
//  homeWork.c
//  cCode29
//
//  Created by liu on 13-9-12.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
//导入 系统标准库
#include <stdlib.h>
#include <string.h>

//第一个作业题目
void work1()
{
    //(1)	定义一个int类型的指针pn，并初始化为NULL。
    int *pn = NULL;
    
    //(2)	使用malloc为pn分配一块动态的适合存储一个int值的内存。
    pn = (int *)malloc(sizeof(int));
    if (pn==NULL) {
        exit(-1);
    }
    
    //(3)	通过指针pn，将整数25保存到刚刚分配的内存中。
    *pn = 25;
    
    //(4)	分配显示*pn和pn的值，分析输出的结果。
    printf("第一次赋值 *pn = %d , pn = %p  \n",*pn,pn);
    
    //(5)	为指针pn所指向的内存重新赋值100。
    *pn = 100;
    
    //(6)	继续显示*pn和pn的值，分析输出结果。
    printf("第二次赋值 *pn = %d , pn = %p  \n",*pn,pn);
    
    //(7)	使用free释放为指针pn分配的动态内存。
    free(pn);
    //(8)	显示使用free后，*pn和pn的值，并分析结果。
    printf("释放后 *pn = %d , pn = %p  \n",*pn,pn);
    
    //(9)	将指针pn的值赋值NULL，分析原因并打印指针pn的值。
    pn = NULL;
    //printf("释放后 *pn = %d , pn = %p  \n",*pn,pn);
    
    //(10)	定义一个double指针pf，并在定义时使用malloc为其分配一块适合存储double类型的内存，并在分配时将10.25赋值给动态内存。
    double *pf=NULL;
    pf = (double *)malloc(sizeof(double));
    if (pf == NULL) {
        exit(-1);
    }
    *pf = 10.25;
    
    //(11)	分别显示pf和*pf的值。
    printf("pf = %p , *pf = %lf \n",pf,*pf);
    
    //(12)	释放指针pf所指向的动态内存。
    free(pf);

    //(13)	并将内存释放后的pf赋值为NULL。
    pf = NULL;
    
    //(14)	显示指针pf的值。
    printf("pf = %p  \n",pf);
}










