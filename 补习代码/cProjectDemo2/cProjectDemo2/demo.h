//
//  demo.h
//  cProjectDemo2
//
//  Created by liu on 13-9-23.
//  Copyright (c) 2013年 liu. All rights reserved.
//

//防止重复导入问题的宏定义
#ifndef cProjectDemo2_demo_h
#define cProjectDemo2_demo_h

//程序从上往下依次执行，所有的函数必须在调用之前声明，声明不需要实现
void demo1();
void demo2();
void demo3();

void forDemo4();

/*
 输入一行字符，分别统计出其中英文字母、空格、数字、其他字符的个数
 */
void getCharNumbers();

//演示如何得到用户输入的字符串
void charDemo();


/*
 求  sum = a+aa+aaa+aaaa+.....+(n个)a,其中 a 是数字
 如  a= 2 ,n = 5   sum = 2+22+222+2222+22222
 a 和 n 由键盘输入
 */
void getSum();











#endif
