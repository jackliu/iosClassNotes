//
//  Demo1.m
//  objc-demo
//
//  Created by liu on 13-4-17.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Demo1.h"

@implementation Demo1

+(void)d1
{
    //int   内存大小 没有 double 大。
    //如果把一个 int 值放入 double 空间中
    //double d = 12;
    //由内存小的往内存大的空间中放入值，自动转换，一切 OK
    //int  i =  (int)12.0;
    //由内存大的往内存小的空间中放入值，强制转换，损失精确度
    int a = 12+34;
    int b = 43-29;
    int c = 38*43;
    int d = 33/6;
    int e = 33%6;
    //打印这些结果
    NSLog(@"a  =  %d",a);
    NSLog(@"b  =  %d",b);
    NSLog(@"c  =  %d",c);
    NSLog(@"d  =  %d",d);
    NSLog(@"e  =  %d",e);
}

#pragma mark -
#pragma mark 实现 加 减  乘 除 求余 功能
+(int)addWith:(int)_num1   andWith:(int)_num2
{
    return _num1+_num2;
}


+(int)subNum1:(int)_n1     andNum2:(int)_n2
{
    return _n1-_n2;
}


+(int)multiplicationNum1:(int)_n1 andNum2:(int)_n2
{
    return _n1*_n2;
}

+(int)divNum1:(int)_n1     andNum2:(int)_n2
{
    //除数不能为 0,仅有这一个判断条件，选择 if()
    //需要用到 逻辑运算符号 
    if (_n2 == 0) {
        NSLog(@"除数为 0 ，请重新输入");
        return 0;
    }
    return _n1/_n2;
}

+(int)complementNum1:(int)_n1 andNum2:(int)_n2
{
    if (_n2 == 0) {
        NSLog(@"除数为 0 ，请重新输入");
        return 0;
    }
    
    return _n1%_n2;
}


#pragma mark -
#pragma mark  计算一个数字的 n 次方
+(long)calculWithNum:(int)num factWith:(int)n
{
    //保存结果的变量
    int rs =  1;
    
    //判断
    //非 0 数字的 0 次方为 1
    if (num != 0 && n==0) {
        return rs;
    }
    //0 的 0 次方为 0
    if (num == 0 && n == 0) {
        return 0;
    }
    
    //循环控制相乘的次数
    //for 循环的组成：
    //循环索引 i,循环初始值 i=0,循环的增长量 i++,循环结束条件 i<n
    //循环体 {}
    for (int i=0; i<n; i++) {
       rs = rs * num;
    }
    
    return rs;
}

+(void)print
{
    //算加法
    int num1 = 10;
    int num2 = 0;
    
    NSLog(@"num1 - num2 = %d",[Demo1 subNum1:num1 andNum2:num2]);
    NSLog(@"num1 * num2 = %d",[Demo1 multiplicationNum1:num1 andNum2:num2]);
    NSLog(@"num1 div num2 = %d",[Demo1 divNum1:num1 andNum2:num2]);
    NSLog(@"num1 / num2 = %d",[Demo1 complementNum1:num1 andNum2:num2]);
    //
    long rs = [Demo1 calculWithNum:2 factWith:4];
    NSLog(@" 求阶乘 %ld ",rs);
}


//接受用户输入，根据选择做相应运算
+(void)printMessage
{
    do{
    NSLog(@"你好，欢迎使用本计算器，请选择要实现的功能:");
    NSLog(@"1 做加法，两个数字相加");
    NSLog(@"2 做减法，两个数字相减");
    NSLog(@"3 做乘法，两个数字相乘");
    NSLog(@"4 做除法，第一个数除第二个数字");
    NSLog(@"5 做求余");
    NSLog(@"6 求阶乘，第一个参数的 n 次方");
    NSLog(@"0 退出程序");
    int choose = 0;
    NSLog(@"请输入选择编号:");
    scanf("%d",&choose);
    
    switch (choose) {
        case 1:
            {
                int n1 =0;
                int n2 = 0;
                NSLog(@"加法，请输入两个数字:");
                scanf("%d,%d",&n1,&n2);
                NSLog(@"num1 + num2 = %d",[Demo1 addWith:n1 andWith:n2]);
            }
            break;
            
        case 0:
            {
                exit(0);
                break;
            }
        default:
            break;
    }
    }while (1>0);
    
}


//演示循环中的跳转
+(void)continuDemo
{
    for (int i=0; i<10; i++) {
        if (i>4 && i<7) {
            continue;
        }
        NSLog(@" i = %d",i);
    }
}





@end





