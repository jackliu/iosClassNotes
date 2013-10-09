//
//  main.m
//  ocCode4
//
//  Created by liu on 13-10-9.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Circle.h"

#import "Employee.h"
#import "Maninager.h"
#import "Technician.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Demo1  @property----------------");
        //1 创建对象(定义引用变量、分配内存、初始化)
        Circle *c1 =[[Circle alloc]init];
        //2 通过对象的引用变量 c1,设置属性值
        [c1 setRadius:30.0];
        //3 通过对象的引用变量 c2,计算圆形的面积
        double area = [c1 getArea];
        NSLog(@"半径为 %lf 圆形面积为 %lf",c1.radius,area);
        //设置名称属性
        [c1 setName:@"刘"];
        //取出名称属性值
        NSLog(@"%@",[c1 getMyName]);
        
        
        NSLog(@"Demo2  init------------------");
        Circle *cc1 = [[Circle alloc]init];
        [cc1 printAllPropertys];
        
        Circle *cc2 = [[Circle alloc]initWithRadius:30.0];
        [cc2 printAllPropertys];
        
        Circle *cc3 = [[Circle alloc]initWithRadius:40.0 andName:@"小圆"];
        [cc3 printAllPropertys];
        
        
        NSLog(@"Demo3  -----------------------");
        //创建项目经理对象
        Maninager *mana = [[Maninager alloc]init];
        [mana setSalary:8000.0];
        NSLog(@"经理的工资是 %lf ",[mana salary]);
        
        //创建技术人员对象
        Technician *tech = [[Technician alloc]init];
        //手动设置工作时间
        [tech setWorkTime:200];
        NSLog(@"技术人员工资是 %lf",[tech getTechicianSalary]);
    }
    return 0;
}






