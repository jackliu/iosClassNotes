//
//  Demo1.h
//  objc-demo
//
//  Created by liu on 13-4-17.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Demo1 : NSObject

//演示基本的 算术运算符
+(void)d1;

//把 各个计算的功能分割开，每个独立一个函数
//C 语言写法
//只是单独为函数起名，
//(int)add(int num1 ,int num2);
//OC 语言写法
//with num1  and with num2 add
//用 num1 和 num2 相加
//多个参数，用 空格 分割、每个参数起个名字，
//使用 : 强调后面就是参数
//为每个参数单独起名字，使用 : 进行占位
+(int)addWith:(int)_num1   andWith:(int)_num2;
+(int)subNum1:(int)_n1     andNum2:(int)_n2;
+(int)multiplicationNum1:(int)_n1 andNum2:(int)_n2;
+(int)divNum1:(int)_n1     andNum2:(int)_n2;
+(int)complementNum1:(int)_n1 andNum2:(int)_n2;
//计算一个数字的 n 次方
//计算 calculate
//平方 square
//阶乘  factorial
+(long)calculWithNum:(int)num factWith:(int)n;


//调用上面的简单计算方法
+(void)print;


//接受用户输入，根据选择做相应运算
+(void)printMessage;


//演示循环中的跳转
+(void)continuDemo;



@end





