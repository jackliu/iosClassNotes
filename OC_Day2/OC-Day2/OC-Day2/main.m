//
//  main.m
//  OC-Day2
//
//  Created by liu on 13-10-8.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>
//1 导入自定义类的头文件
#import "YCProjectManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //2 定义一个项目经理的对象，对象名，对象值
        int a;
        a=10;
        //对象类型    *引用变量名称
        YCProjectManager *pm1;
        //3 赋值，A 在内存中分配空间，B 然后给所有属性设置具体的值
        //c 语言中使用 malloc() 函数，oc 中 alloc
        pm1 = [YCProjectManager alloc];
        pm1 = [pm1 init];
        [pm1 setName:@"王经理"];
        [pm1 writeDocument];
        
        NSLog(@"-----------------");
        
        //三个步骤连接在一起完成
        YCProjectManager *pm2 =[[YCProjectManager alloc]init];
        //init 方法只能确认内存是否分配成功，不能修改属性值，自己实现
        //先通过 setter 方法给属性设置值
        [pm2 setName:@"张经理"];
        [pm2 setAge:35];
        [pm2 setSex:@"男"];
        [pm2 setEmpNumber:2001];
        [pm2 setDepartment:@"移动应用研发部"];
        
        //pm2 就是--对象(Object)|实例(Instance)
        //对象能够干什么?
        //通过对象，可以调用类中定义的所有行为
        //NSLog(@"%@",[pm2 getName]);
        [pm2 meeting];
        
        [pm2 arrangeDevelopers];
    }
    return 0;
}

