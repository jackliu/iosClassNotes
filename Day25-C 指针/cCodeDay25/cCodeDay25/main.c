//
//  main.c
//  cCodeDay25
//
//  Created by liu on 13-9-6.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    /*
    //演示 **P ，指向指针的指针
    int nVal = 10;     //nVal 是变量   10 是值
    int *ptr = &nVal;  //ptr  是地址 A  <--> &nVal
    //定义一个存放指针内存地址的指针--指针的指针
    int **pptr = &ptr;
    
    //---------------------------
    // 名      值       地址
    //---------------------------
    // nVal    10      &nVal=A
    // ptr     A       B
    // pptr    B       C
    //----------------------------
    
    printf("(1)10 取 nVal 的值  %d !\n",nVal);
    printf("(2)A 取 &nVal 的值  %p !\n",&nVal);
    printf("(3)10 取 *ptr 的值  %d !\n",*ptr);
    printf("(4)A 取 ptr 的值  %p !\n",ptr);
    printf("(5)B 取 &ptr 的值  %p !\n",&ptr);
    printf("(6)A 取 *pptr 的值  %p !\n",*pptr);
    printf("(7)10 取 *(*pptr) 的值  %d !\n",**pptr);
    printf("(8)B 取 pptr 的值  %p !\n",pptr);
    printf("(9)C 取 &pptr 的值  %p !\n",&pptr);
    */
    
    
    /*
    //通过交换指针，交换两个值
    int a =10;
    int b =40;
    a= a^b;
    b= a^b;
    a= a^b;
    
    //改变指针变量的指向
    int i,j,*pi,*pj;
    i = 'a';
    j = 'b';
    
    pi = &i;
    pj = &j;
    
    printf("交换前 *pi = %c \n",*pi);
    printf("交换前 *pj = %c \n",*pj);
    
    //交换指针
    int *temp=0;
    temp = pi;
    pi = pj;
    pj = temp;
    
    printf("交换后 *pi = %c \n",*pi);
    printf("交换后 *pj = %c \n",*pj);
    */
    
    
    
    int arr[] = {1,2,3,4,5,6,7,8,9,0};
    int *p;     //定义一个指针变量
    p = arr;    //数组名，代表数组的首地址
    printf("数组名  %p  \n",arr);
    printf("p 指针 %p  \n",p);
    printf("数组下标访问的第一个值 %d  \n",arr[0]);
    printf("指针访问的第一个值 %d  \n",*p);
    
    for (int i=0; i<10; i++) {
        printf("下标循环取值  %d \n",arr[i]);
    }
    
    printf("---------------");
    
    for (int i=0; i<10; i++) {
        printf("指针循环取值 %d \n",*(p+i));
        //p++;
    }
    
    
    
    
    
    
    
    
    
    

    
    
    
    
    
    
    return 0;
}

