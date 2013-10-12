//
//  Employee.m
//  objc-demo
//
//  Created by liu on 13-4-23.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Employee.h"

@implementation Employee


/*
//注意：只需要编写，不要在任何地方调用，由系统自动调用
-(void)dealloc
{
    //当前类中只有这两个属性需要释放内存
    [name release];
    [sex release];
    //记得把父类中的引用计数也释放掉
    [super dealloc];
}
 */



//如何给属性赋值
//方法一：纯手工赋值
//使用 setter 方法给属性赋值,提供了写入权限
-(void)setName:(NSString *)_name
{
    name=_name;
}

//使用 getter 方法，取出属性值，得到当前对象的名字
//提供了读取权限
-(NSString *)name
{
    return name;
}






@end






