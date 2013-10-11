//
//  main.m
//  ocDay6
//
//  Created by liu on 13-10-11.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>
//导入学员的头文件
#import "Student.h"
//导入扩展类别文件
#import "Student+Sport.h"
//如果需要在次增加 功能，再导入一个 类别文件
#import "Student+Music.h"


int main(int argc, const char * argv[])
{
    @autoreleasepool {
        //知识点一：类别
        //     作用一：拆分功能、将类的实现分散到多个文件中
        //     作用二：扩展功能、对别人的代码进行局部功能的扩展
        //新建一个学员对象
        Student *stu = [[Student alloc]init];
        [stu doHomwowrk];
        
        //新建 Student 的类别文件，扩展新的方法
        [stu football];
        //导入新的类别文件，对象能够做更多的事情
        [stu playPiano];
        
        //知识点二:私有方法、匿名类别
        //私有方法:只实现，不在头文件中定义的方法
        //匿名类别:没有名字的类别  ()
        [stu playGame];
        
    }
    return 0;
}







