//
//  main.m
//  oc-Day7
//
//  Created by liu on 13-10-12.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //所有对象，保留计数减为 0  时，才能释放内存
        for (int i=0; i<10000; i++) {
            //创建 10000 个对象，都不能释放，所占内存
            
            //创建一个 学员对象
            Student *stu = [[Student alloc]init];
            //stu 对象，保留计数为 1
            
            
            //情况一，在 for 循环内部使用完毕
            //每次使用后，立即释放
            //[stu release];
            
            //情况二，在｛｝ for 里面使用后，外部还想用
            //[stu retain];
        }
        
        
        
        
        
        
        
    }
    return 0;
}

