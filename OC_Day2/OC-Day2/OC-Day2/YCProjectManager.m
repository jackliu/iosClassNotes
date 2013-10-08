//
//  YCProjectManager.m
//  OC-Day2
//
//  实现文件中，对所有声明的方法进行实现
//
//  Created by liu on 13-10-8.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "YCProjectManager.h"

//implementation 实现 头文件中所生名的所有 行为
@implementation YCProjectManager

#pragma mark - 给五个属性分别赋值
//setter 方法，专用于给类的属性赋值
//给形式参数添加 _
-(void)setName:(NSString *)_name
{
    name = _name;
}
-(void)setAge:(int)_age
{
    age  = _age;
}

-(void)setSex:(NSString *)_sex
{
    sex = _sex;
}
-(void)setEmpNumber:(int)_number
{
    empNumber = _number;
}
-(void)setDepartment:(NSString *)_dept
{
    department = _dept;
}
//getter 方法，专用于从类中获得属性的值
-(NSString *)getName
{
    return name;
}
-(NSString *)getSex
{
    return sex;
}
-(NSString *)getDepartment
{
    return department;
}
//另外两个属性不想让用户知道，就不提供



#pragma mark - 项目经理日常工作
//会见客户
-(void)meeting
{
    NSLog(@"项目经理 %@ 在会见客户",name);
}
//写文档
-(void)writeDocument
{
    NSLog(@"项目经理 %@ 在写文档",name);
}

//分配开发人员任务
-(void)arrangeDevelopers
{
    NSLog(@" %@ 在分配开发人员任务",name);
}

//招聘
-(void)zhaopin
{
    NSLog(@"项目经理在参加面试");
}


@end
