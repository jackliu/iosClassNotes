//
//  main.m
//  ocDay5
//
//  Created by liu on 13-10-10.
//  Copyright (c) 2013年 liu. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Teacher.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //知识点一：多态的定义
        //使用多态的语法定义 三个对象
        //父类类型  引用  子类对象
        Person *p1 = [[Person alloc]init] ;
        Person *p2 = [[Student alloc]init] ;
        Person *p3 = [[Teacher alloc]init] ;
        
        //知识点二：方法的重写(父子类之间)
        //1、运行前，先在 父类中找 printMessage 方法，找不到，报错
        //          如果父类中，没有出现过的方法，无法调用
        //2、运行中，在后面对象中找 printMessage 方法，
        //   情况一，在 子类对象中找不到 方法，调用父类中定义的方法
        //   情况二，在 子类对象中找到   方法，调用子类自己的方法
        [p1 printMessage];
        [p2 printMessage];
        [p3 printMessage];
        
        [p2 printMessage];  //为什么 p2 ，调用不到 sayhello 方法
        
        //知识点三：动态数据类型--万能类型
        // id 类型的对象定义、方法的调用 都是在运行时动态进行的
        //编译时：炒菜前的买、洗的过程
        //运行时：下锅炒的过程
        NSObject *o1 = [[Person alloc]init];
        NSObject *o2 = [[Student alloc]init];
        //[o1 printMessage];
        
        //(NSObject *) 类型，简化为 id
        id i1 = [[Person alloc]init];
        id i2 = [[Student alloc]init];
        
        //知识点四、动态类型判断，编译时检查
        //1、编译器运行前，先把 id 替换成后面对象的类型
        //Person *i1 = [[Person alloc]init];
        [i1 printMessage];
        //Student *i2 = [[Studnet alloc]init];
        [i2 printMessage];
        [i2 sayhello];
        
        
    }
    return 0;
}







