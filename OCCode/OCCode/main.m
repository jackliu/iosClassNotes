//
//  main.m   文件名
//  OCCode   工程名
//
//  Created by liu on 13-10-7.  作者，创建时间
//  Copyright (c) 2013年 liu. All rights reserved.  版权
//

//导入 OC 基础库，包含了 C 的基础库 stdio.h
// #import  与 #include 相比，能够自动防止重复导入
// <>    Apple 公司提供的工具箱中提供的头文件
// Foundation/  文件夹、命名空间的名字
// Foundation.h 真正要使用的  头文件  的名字
// Foundation.h 中把所有常用的头文件全部导入，便于我们使用
// 我们在编写 OC 代码的时候，只需要导入一个 Foundation.h 就足够了
#import <Foundation/Foundation.h>

#import <Foundation/Foundation.h>

//第一天作业
#import "work2.h"

int main(int argc, const char * argv[])
{
    //最简单的 管理 C 语言内存使用的方法
    //自动引用计数释放池
    //@  OC 中的万能符号
    @autoreleasepool {
        //所有代码全部写入 自动释放池
        /*
        //占位符，与数据类型有关
        //输入信息
        char c;
        scanf("%c",&c);
        
        //基本输出函数，输出日志信息，带自动换行
        NSLog(@"Hello, World!  %c",c);
        printf("Hello, World!  %c \n",c);
        */
        
        
        //定义一个指向 work2 接口内的指针
        work2 *w = [[work2 alloc]init];
        //method1();
        //通过指针调用 接口内部声明的函数
        [w method1];
        NSLog(@"20 和 100 较大的值为 %d ",[w getMax:20 :100]);
        
        
        //定义一个矩形
        CGRect rect1 =CGRectMake(0.0f, 0.0f, 100.0f, 200.0f);
        
        
    }
    return 0;
}





