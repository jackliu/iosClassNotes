//
//  main.c
//  c-code8
//
//  Created by liu on 13-4-8.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
//倒入 自定义宏所在的头文件
#include "myHeader.h"

#pragma mark -
#pragma mark 函数声明
//演示简单的宏调用
void demo1();
void demo2();
void demo3();
void demo4(); //调用带参数d的宏

void demo5();  //调用调试代码的宏

#pragma mark -
#pragma mark 程序的入口 main()
int main(int argc, const char * argv[])
{
    //demo1();
    //demo2();
    //demo3();
    //demo4();
    demo5();
    return 0;
}

#pragma mark -
#pragma mark 函数的实现
//演示简单的宏调用
void demo1()
{
    //使用宏定义数组的长度
    int arr[MAX];
    //给数组元素赋值
    for (int i=0; i<MAX; i++) {
        arr[i]=i;
        printf("arr[ %d ] = %d \n",i,arr[i]);
    }
}

//调用 宏定义的字符串
void demo2()
{
    printf("第一门课程的名字 %s \n",LESSON1);
    printf("今天的头条新闻 %s \n",NEWS);
    //新闻过期了
    #undef NEWS
    //取消一个宏的定义后，无法使用
    //printf("今天的头条新闻 %s \n",NEWS);
}


//使用宏替换程序常用代码
void demo3()
{
    //FOR
    //FOR2(MAX)
    FOR2(2+5)
        printf("第 %d 次循环 \n",i);
    }
}

//调用的带参数的宏
void demo4()
{
    int a = 10+1;
    int b = 10-3;
    int min = MIN(a, b);
    // ((A)<=(B)?A:B)
    // A - B  -- > 10+1 - 10-3
    //替换jieguo
    // ((10+1) < (20*3) ? (10 +1) :(20 *3))
    printf("较小的值是  %d \n",min);
}




//使用宏替换程序常用代码
void demo5()
{
    FOR2(MAX)
        printf("第 %d 次循环 \n",i);
        LOG_LINE;
        LOG_TIME;
    }
}




