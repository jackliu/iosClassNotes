//
//  RunDemo.m
//  OC0505-blockDemo
//
//  Created by liu on 13-5-5.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "RunDemo.h"

@implementation RunDemo

-(void)run
{
    //@autoreleasepool 增加特定功能的关键字，不是块的名字
    @autoreleasepool {
        //[self demo1];
        [self demo5];
    }
}

-(void)demo1
{
    NSLog(@"看看函数中能否写另一个函数");
    //普通的 代码块，没有名字，没有名字无法调用
    {
        NSLog(@"块1");
        NSLog(@"块1");
        NSLog(@"块1");
    }
    //为了调用这个代码块，给它起名字
    //起名字，必须按照规则，有完整的输入、输出、主体
    /*
    -(void)aa:(NSString *) s{
        NSLog(@"块1");
        NSLog(@"块1");
        NSLog(@"块1");
    }
    */
}


-(void)demo2
{
    NSLog(@"演示 新的语法，实现块中再声明一个块");
    
    //代码块定义
    //有输入、输出、主体，组成一个整体
    ^(int a){return a*a;};
    
    //如何使用？
    //好处一：可以在 demo2{} 线程中，分出一个新的线程 {}
    //任何一个 Block 都会自动的新开一个线程
    int result = ^(int a){return a*a;}(4);
    NSLog(@"result = %d",result);
}


-(void)demo3
{
    NSLog(@"给块起一个名字，通过名字调用这个块 Block pointer");
    ^(int a){return a*a;};
    //返回值类型 (^代码块名字) (参数列表);
    //1、声明叫 square 的 Block Pointer，指向的 Block 是有一个 int 输入参数和 int 返回输出
    int (^square) (int);
    //2、让 Block Pointer  square 指向一个块
    square = ^(int a ) {return a*a ;};
    
    //连写
    //int(^sq)(int) = ^(int a){return a*a;};
    
    //int (^aa)(int) = ^(int a){return a*a;};
    
    //3、使用 Block Pointer
    int result = square(5);   //感觉类似于 funtion
}


-(void)demo4
{
    NSLog(@"演示代码块掉变量");
    int outA = 8;
    //代码块与函数一样，把值复制一份，传给代码块
    //两边进行类型匹配
    int (^myPtr) (int) = ^(int a) {return outA+a;};
    
    //在代码块的外面修改，不影响代码块里面的值
    outA = 0;
    
    // block 里面可以读同一个 scope 的outA的值
    int result = myPtr(3); // result is 11
    NSLog(@"result = %d",result);
}



-(void)demo5
{
    NSLog(@"演示代码块掉变量");
    __block int outA = 8;
    //代码块变量修饰符  __block 变量，不会复制，直接调用
    int (^myPtr) (int) = ^(int a) {return outA+a;};
    
    //在代码块的外面修改，影响代码块里面的值
    outA = 0;
    
    // block 里面可以读同一个 scope 的outA的值
    int result = myPtr(3); // result is 3
    NSLog(@"result = %d",result);
}


@end











