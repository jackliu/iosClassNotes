//
//  work2.h
//  OCCode
//
//  OC 类的基本语法:头文件声明 *.h 、 实现文件实现 *.m
//  用 OC 实现 九九乘法表，练习 OC 基本语法
//
//  Created by liu on 13-10-7.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>


//类的声明           @interface  接口
//类的属性、函数   与 @end 配套
// :         表示继承关系，后跟当前类的父类
// NSObject  NSObject 是所有类的父类
@interface work2 : NSObject
{
    //属性
}

//函数
//返回值类型  void; method1 函数的名称 ; () 函数输入参数
//不带参数的定义方法
//void method1();
-(void)method1;

//int getMax(int num1,int num2); //求两个数字中较大的值
-(int)getMax:(int)num1 :(int)num2;
-(int)getMinNum1:(int)num1 andNum2:(int)num2;

/*
 1、OC 函数定义前加  -  或  +
 2、OC 函数定义返回值类型，参数类型 加 ()
 3、OC 函数的参数，无参函数，函数名后为空
 4、OC 函数的参数，带参函数，:(类型) 参数名
    一个参数 一个 : 
 5、OC 函数参数的风格，在函数名上加参数名，调用时可以知道参数名称
    完整调用名称 (getMaxNum1:  andNum2:)
 */

@end











