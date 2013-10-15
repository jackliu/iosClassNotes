//
//  Employee.h
//  objc-demo
//
//  Created by liu on 13-4-23.
//  Copyright (c) 2013年 liu. All rights reserved.
//
//  在头文件中定义所有的属性

#import <Foundation/Foundation.h>

@interface Employee : NSObject
{
    NSString *name;       //姓名
    int age;              //年龄  1-150
    NSString *sex;        //性别，只能是 男、女
    double salary;        //工资
}

//下面是定义方法的地方

//NSObject 类中定义的，与引用计数有关的函数
//释放之前所有地方的引用计数
//注意：只需要编写，不要在任何地方调用，由系统自动调用
//-(void)dealloc;

//如何给属性赋值
//方法一：纯手工赋值
//可以手动控制，别人使用该对象时，对某个属性的读写权限。

//使用 setter 方法给属性赋值
-(void)setName:(NSString *)_name;
//使用 getter 方法，取出属性值
-(NSString *)name;


//由于性别，不能更改，只提供一个读取的权限，
-(NSString *)sex;


@end




