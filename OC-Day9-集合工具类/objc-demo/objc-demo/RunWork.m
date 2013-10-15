//
//  RunWork.m
//  objc-demo
//
//  Created by liu on 13-4-25.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "RunWork.h"
//导入头文件
#import "Peson.h"
#import "Student.h"
#import "Teacher.h"

@implementation RunWork

#pragma mark -  创建三个对象，并打印
-(void)createObject1
{
    //创建三个类的对象并且赋值
   
    /*
    Student *p2 = [[Student alloc]initWithNumber:@"7788" andClassName:11229 andMajor:@"软件工程" andAchieve:98.0 andName:@"王强" andAge:20 andSex:@"男" andAddress:@"上海"];
    Teacher *p3 = [[Teacher alloc]initWithNumber:@"0319" andTitle:@"讲师" andSalary:8000.0 andName:@"张平" andAge:36 andSex:@"男" andAddress:@"上海"];
    */
    /*
    Peson *p1 = [[Peson alloc]initWithName:@"张三" andAge:60 andSex:@"nan" andAddress:@"南京"];
    Peson *p2 = [[Student alloc]initWithNumber:@"7788" andClassName:11229 andMajor:@"软件工程" andAchieve:98.0 andName:@"王强" andAge:20 andSex:@"男" andAddress:@"上海"];
    Peson *p3 = [[Teacher alloc]initWithNumber:@"0319" andTitle:@"讲师" andSalary:8000.0 andName:@"张平" andAge:36 andSex:@"男" andAddress:@"上海"];
    */
    NSObject *p1 = [[Peson alloc]initWithName:@"张三" andAge:60 andSex:@"nan" andAddress:@"南京"];
    NSObject *p2 = [[Student alloc]initWithNumber:@"7788" andClassName:11229 andMajor:@"软件工程" andAchieve:98.0 andName:@"王强" andAge:20 andSex:@"男" andAddress:@"上海"];
    NSObject *p3 = [[Teacher alloc]initWithNumber:@"0319" andTitle:@"讲师" andSalary:8000.0 andName:@"张平" andAge:36 andSex:@"男" andAddress:@"上海"];
    
    
    //给出创建好的"对象名"，分辨对象的类型，并分别打印他们
    //p1 判断 p1 是老师、还是学生、还是普通人
    
    //[Peson  class] 方法得到一个类别
    //判断 p1 对象是不是属于 Peson 类型
    //Peson *pp = p3;
    //如果类型使用的是 NSObject ，定义对象的时候，类型为 id
    //id 可以代表任意类型的对象
    id pp = p3;
    
    if ([pp isMemberOfClass:[Peson class]]) {
        [self print1:p2];
    }
    else if([pp isMemberOfClass:[Student class]])
    {
        NSLog(@"p1 对象是 学生");
    }else if([pp isMemberOfClass:[Teacher class]])
    {
        NSLog(@"p1 对象是  老师");
        //需要强制类型转换
        Teacher *tt = (Teacher *)pp;
        //pp 对象统一为 Peson 类型，只能直接调用 Peson 中的属性
        NSLog(@"老师的姓名 %@ ",[tt name]);
        
        NSLog(@"老师的职称 %@ ",[tt techTitle]);
    }
    
}



#pragma mark - 创建方法，接受 人的对象
-(void)print1:(Peson *) _peson
{
    NSLog(@"普通人对象 ，姓名%@,年龄%d,性别%@",[_peson name],[_peson age],[_peson sex]);
}


#pragma mark - 创建方法，接受 任意类型的对象
-(void)print2:(id) _peson
{
    //得到的是 id 类型，必须先判断具体是什么类型，再使用
    if ([_peson isMemberOfClass:[Peson class]]) {
        NSLog(@"普通人");
        //确定类型后，强制类型转换
        Peson *p = (Peson *)_peson;
        
    }
    if ([_peson isMemberOfClass:[Student class]]) {
        NSLog(@"学生");
    }
    
    if ([_peson isMemberOfClass:[Teacher class]]) {
        NSLog(@"老师");
    }
    
    
}


@end





