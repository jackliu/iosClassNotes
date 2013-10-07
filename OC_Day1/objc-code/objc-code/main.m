//
//  main.m
//  objc-code
//
//  Created by liu on 13-4-16.
//  Copyright (c) 2013年 liu. All rights reserved.
//

//#import 与 #include 的区别
//#import 可以防止重复导入相同的库
#import <Foundation/Foundation.h>

//再次导入，会自动忽略
#import <Foundation/Foundation.h>

//导人 day1 中声明的头文件
#import "work1.h"

int main(int argc, const char * argv[])
{
    //自动内存释放池
    @autoreleasepool {
        /*
        // insert code here...
        NSLog(@"Hello, World!");
        printf("Hello, World ! \n");
        */
        //第一天代码，调用 OC 定义的方法，用 []
        // c 语言调用 方法
        //f1();
        // OC 语言调用  方法
        [work1 f1];
        
    }
    return 0;
}








