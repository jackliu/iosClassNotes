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

static double  salary=5000.0;  //工资

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
//在 OC  中，setter 方法前加  setXX ;getter 方法前不加 getXx
-(NSString *)name
{
    return name;
}
-(NSString *)sex
{
    return sex;
}
-(NSString *)department
{
    return department;
}


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


#pragma mark - 打印该对象的相关信息
-(void)print
{
    //在类的内部 @end 之前，一个方法要调用另外一个方法 [对象 方法];
    //self 表示在类的内部，定义的一个自己的对象    [self 方法名]
    //self 在类的内部，调用自己的属性值           [self getxx];
    //self 可以用 . 操作符，实际上调用的是属性的 getter 方法
    //self.sex  ==  [self sex]
    NSLog(@"姓名: %@ ,性别: %@ ,部门 :%@ ",[self getName],self.sex,department);
}

+(void)print2
{
    NSLog(@"工资 %lf  ",salary);
}

@end




