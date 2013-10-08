//
//  YCProjectManager.h
//  OC-Day2
//
//  头文件中只负责对 类图中的属性和行为进行声明
//
//  Created by liu on 13-10-8.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

//@ OC 标记
//interface 关键字，表示后面的YCProjectManager 是类的声明
// :  继承关系
//NSObject  所有类都必须继承的父类
@interface YCProjectManager : NSObject
{
    //属性放置在 {} 内部
    NSString *name;
    int age;
    NSString *sex;
    int empNumber;
    NSString *department;
}

//补充方法，给五个属性分别赋值
//setter 方法，专用于给类的属性赋值
//给形式参数添加 _
-(void)setName:(NSString *)_name;
-(void)setAge:(int)_age;
-(void)setSex:(NSString *)_sex;
-(void)setEmpNumber:(int)_number;
-(void)setDepartment:(NSString *)_dept;
//getter 方法，专用于从类中获得属性的值
-(NSString *)getName;
-(NSString *)getSex;
-(NSString *)getDepartment;
//另外两个属性不想让用户知道，就不提供
//在 OC  中，setter 方法前加  setXX ;getter 方法前不加 getXx
-(NSString *)name;
-(NSString *)sex;
-(NSString *)department;




//行为放置在 {} 外部
//void meeting();
//会见客户
-(void)meeting;
//写文档
-(void)writeDocument;
//分配开发人员任务
-(void)arrangeDevelopers;
//招聘
-(void)zhaopin;

//打印该对象的相关信息
-(void)print;
+(void)print2;


@end







