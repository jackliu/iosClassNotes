//
//  main.c
//  cProjectDemo3
//
//  Created by liu on 13-9-24.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
#include "Work.h"

//宏定义数组长度
#define LENGTH 10
//自定义数组中存放的数据类型
typedef int  DataType;



int main(int argc, const char * argv[])
{
    /*
    //1 定义长度为 10 的数组
    DataType arr[LENGTH];
    //2 手动给数组赋值
    printf("请输入 10 个数字  \n");
    for (int i=0; i<10; i++) {
        scanf("%d",&arr[i]);
    }
    
    //3 循环打印数组
    printf("{");
    for (int i=0; i<10; i++) {
        printf("%d,",arr[i]);
    }
    printf("}  \n");
    
    printf("数组中最大值为  %d \n",getMax(arr,LENGTH));
    printf("数组中最小值为  %d \n",getMin(arr,LENGTH));
    printf("数组中平均值为  %d \n",getAvg(arr,LENGTH));
     */
    
    /*
    //指针
    //指针的定义--什么是指针
    //100 真正要操作的值
    //100 需要一块内存，长度由 int 决定，4个字节
    //100 在内存中存放的位置不好找，我们就用一个 变量名  num 引用它
    //=  赋值，用 num  暂时引用 100 这个值
    int num = 100;
    //定义一个指针，专门指向  100 所在的地址
    //* 表示后面的 p1 是一个指针变量，里面存放地址
    //p1 -->  值的内存地址              取地址
    //*p1-->  这一块地址中存放的具体值    取地址中的值
    int * p1;
    p1 = &num;
    
    //& 可以通过  变量名，取出对应值在内存中的地址
    //%p 指针占位符，打印内存地址
    printf("100 所在内存的实际地址 : %p \n",&num);
    printf("p1 内存地址  : %p \n",p1);
    printf("*p1 指针指向的内存中存放了 : %d \n",*p1);
    
    int **p2;
    p2 = &p1;
    printf("p2 内存地址 : %p \n",p2);
    printf("*p2 内存中的值  : %p \n",*p2);
    printf("**p2 内存中的值  : %d \n",**p2);
    
    //我  是一个消费者
    //我 住在上海，黄埔区，xxx 路234号
    //上海，黄埔区，xxx 路234号  保存起来
    //1号店，可以通过收集的  家庭住址，找到 我
    //1号店 -------------->  我
    //1号店-->家庭住址----->  我      通过指针，操作地址中的值
    //
    */
    
    int nVal = 10;
    //定义一个指针，指向 nVal 的地址
    int *p1 = &nVal;   //值所在的地址
    //int *p1;
    //p1 = &nVal;
    
    //**p 指向指针的指针
    //定义一个指针，指向 p1
    //int **p2 = &p1;  //值的指针所在的地址
    int **p2;
    p2 = &p1;
    /*
     变量名    变量值   地址
     ---------------------------
     nVal      10      A
     p1         A      B
     p2         B      C
     
      表达式     结果     意义
     --------------------------
     nVal        10   取变量中的值
     &nVal       A    取变量的内存地址
     *p1         10   取指针指向内存中的值
     p1          A    取指针中的值
     &p1         B    取指针 p1 的地址
     *p2         A    取出 p2 内存地址中的值
     **p2        10   取出 p2 地址中存放的地址 中存放的具体值
     p2          B    取出 p2 中存放的 p1 的内存地址
     &p2         C    
     */
    printf("nVal = %d \n",nVal);
    printf("&nVal = %p \n",&nVal);
    
    
    
    
    
    
    return 0;
}






