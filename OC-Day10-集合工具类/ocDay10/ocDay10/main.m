//
//  main.m
//  ocDay10
//
//  Created by liu on 13-10-16.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSArrayDemo.h"
#import "NSDictDemo.h"
#import "NSSetDemo.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //Demo1 演示迭代器遍历集合中的数据
        NSArrayDemo *demoObj1 = [[NSArrayDemo alloc]init];
        //[demoObj1 demo1];
        //[demoObj1 demo2];
        //[demoObj1 demo3];
        //[demoObj1 demo4];
        
        //Demo2 演示如何使用字典
        NSDictDemo *demoObj2 = [[NSDictDemo alloc]init];
        //[demoObj2 demo1];
        
        //Demo3 演示如何使用堆
        NSSetDemo *demoObj3 = [[NSSetDemo alloc]init];
        [demoObj3 demo1];
        
        
        
        
        
        
    }
    return 0;
}

