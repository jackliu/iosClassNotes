//
//  main.m
//  objc-demo
//
//  Created by liu on 13-4-17.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "work1.h"
#import "Demo1.h"
//导人第四天头文件
#import "BubbleSort.h"
//导入第六天头文件
#import "Employee.h"
//导入第七天头文件
#import "Truck.h"
#import "Vehicle.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        //NSLog(@"Hello, World!");
        //第一天代码
        //[work1 f1];
        
        //第二天代码
        //[Demo1 d1];
        //[Demo1 print];
        //[Demo1 printMessage]; //计算器
        //[Demo1 continuDemo];
        
        //第四天代码，排序
        //新建一个的对象
        //alloc  分配内存的函数
        //init   为分配的内存初始化的函数
        /*
        BubbleSort *bs = [[BubbleSort alloc]init];
        //调用赋值函数
        //+(void)initArr
        //[BubbleSort initArr];
        //-(void)initArr 可以用 对象调用
        [bs initArr];
        //打印整个数组中的值
        [bs printArr];
        //排序
        [bs sortArr];
        */
        
        //第六天代码
        /*
        //OC 中创建对象的两种语法
        //语法一，老式的方法
        Employee *e1;
        e1 = [[Employee alloc]init];
        
        //语法二，目前使用的方法
        Employee *e2  = [[Employee alloc]init];
       */
         
       /////////////////////////
       //内存管理
       /*
       //方法一，纯手工管理内存，管理引用计数
       //[xx   alloc] 是一个分配内存的函数，可以存入当前创建的对象
        //引用计数:表示一个对象，可以使用分配给他的内存的次数
        //alloc 函数，分配内存，并能够使计数 +1
        Employee *e2  = [[Employee alloc]init];
        //e2 可能在多个地方使用，记得保留，计数  +1
        [e2 retain];
        //如果还没有使用，就释放了 引用计数  -1
        [e2 release];
        //在这里就不能使用 e2 ，已经被自动释放掉内存了
        [e2 doSomething];
        [e2 release];   //到这里， e2 所占内存自动释放
    
        //手动管理内存的综合应用
        //下面的代码，分配 10000 个内存，有10000 次引用，引用完毕，没有释放
        for (NSUInteger n=0; n<10000; n++) {
            Employee *e3  = [[Employee alloc]init];
            
            //使用 release 函数，把引用计数 -1
            [e3 release];
        }
        //代码运行到这里，上面循环创建的 10000 个对象，内存还保留着
       
    
       //内存管理的方法二：
       //半自动释放内存  [obj  autorelease];
      //autorelease  代表一个承诺,使用完 e4 对象后，最终肯定会释放内存
    //没有手动管理内存，精确度高。程序员不清楚何时、何处释放该内存
    Employee *e4  = [[[Employee alloc]init]autorelease];
    [e4 xxxx];
    //不用调用 release 函数
    //[e4 release];
   
    
    //内存管理的方法三：
    //使用 对象，自动内存释放池
    //不用管理一个一个对象的内存，而是管理一批对象的内存
    NSAutoreleasePool *pool =[[NSAutoreleasePool alloc]init];
    Employee *e5 =[[Employee alloc]init];
    //使用 e5 完成各种操作
    //不用释放内存
    //.........
    
    //最后，由释放池，一次性释放，这一段代码中所有分配的内存
    //drain  清空、释放
    [pool drain];
    
    
    //内存管理的方法四
    //自动内存释放池，简化版
    @autoreleasepool {
     //这里可以创建任意数目的对象
     //不用一一管理内存的引用计数
     //使用完毕，离开 {} 范围，内存自动清空
    }
        
        for (NSUInteger i=0; i<10000; i++) {
            @autoreleasepool {
                Employee *e6 =[[Employee alloc]init];
                //这里可以使用 e6 对象
            }
            //在这里 e6 所占内存已经被释放
            //这里不能使用 e6 ，已经在内存中不存在
        }
    */
        
       /*
     //对象属性的存取器方法
    Employee *e7 =[[Employee alloc]init];
    //目前所有的属性，都没有具体值
    //通过 setName 函数，具有写入属性值的权限
        [e7 setName:@"张三"];
        NSLog(@"员工姓名 : %@ ",[e7 name]);
        */
    
        
     //第七天代码
        /*
    //新建一个卡车对象
        Truck *t1 = [[Truck alloc]init];
        //1 用 setter 方法，设置 卡车的属性
        [t1 setWheels:8];  // 卡车 有 8 个轮胎
        
        //2 用 getter 方法，读取 卡车的属性
        NSLog(@"卡车有 %d 个车轮 ",[t1 wheels]);
        //测试自定义的 get 方法名
        //属性 aaa 默认的取方法的名称为  aaa
        //[t1 aaa];
        //使用 getter=getBBB 后，
        [t1 getBBB];
        */
        
        Vehicle *v1 = [[Vehicle alloc]initWithWheels:8 andWeight:50];
        
        
        
   }
    return 0;
}










