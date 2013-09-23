//
//  main.c
//  cCodeDay34
//
//  Created by liu on 13-9-22.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>

#include "SquStack.h"

extern void bSort(int arr[],int length);

void bubble_sort(int arr[],int  count);


int main(int argc, const char * argv[])
{
    /*
    // insert code here...
    printf("Hello, 顺序栈  !\n");
    //1 定义一个栈
    SeqStack *s =NULL;
    //2 初始化栈
    s = initStack(s);
    //3 往栈中压入 3 个数据
    push(s, 10);
    push(s, 20);
    push(s, 30);
    push(s, 40);
    
    pop(s);
    
    //4 查看栈顶元素
    printf("目前栈顶元素为 %d \n",getTop(s));
    */
    
    
    int bbb[]={1,5,2,4,3,8,6,7,9};
    bSort(bbb,9);
    //实际参数  bbb
    //形式参数  arr
    //函数的参数都是形式参数，被调用的时候，把实际参数复制一份传递到函数的空间中
    //此时内存中会有两份一样的 数组值 --  值传递
    //void bSort(int arr[],int length)
    
    /*
    int count=sizeof(arr)/sizeof(int);
    
    bubble_sort(arr,count);
    
    int k;
    for(k=0;k<count;k++)
    {
        printf("%d",arr[k]);
    }
    */
    
    
    return 0;
}












