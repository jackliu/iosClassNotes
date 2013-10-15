//
//  RunDay10.m
//  objc-demo
//
//  Created by liu on 13-4-27.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "RunDay10.h"
#import "Emple.h"
#import "Manager.h"

#import "Casio.h"

@implementation RunDay10


-(void)run
{
    @autoreleasepool {
        //[self demo1];
        [self demo2];
    }
}

//打印经理的工资
-(void)demo1
{
    
    //使用多态的方法定义对象
    //父类的 变量，引用子类 对象，父子类中都有同名的方法，调用子类中的实现
    //父类中的方法被覆盖，失效
    Emple *e = [[Manager alloc]initWithNumber:@"001" andName:@"张民" andPay:[NSNumber numberWithInt:8000]];
    NSLog(@"e 的工资 %@  ",[e getPay]);
    
    //父类变量，引用父类的对象，调用 父类中的方法
    Emple *e1 = [[Emple alloc]initWithNumber:@"001" andName:@"张民" andPay:[NSNumber numberWithInt:8000]];
    NSLog(@"e1 工资 %@  ",[e1 getPay]);
    //子类变量，引用子类d对象，调用  子类中的方法
    Manager *e2 = [[Manager alloc]initWithNumber:@"001" andName:@"张民" andPay:[NSNumber numberWithInt:8000]];
    NSLog(@"e 的工资 %@  ",[e2 getPay]);
    
    
}


-(void)demo2
{
    //新建卡西欧 对象
    Casio *c = [[Casio alloc]init];
    [c getTime];
    //判断 协议中方法是否实现，如果实现
    //@selector() 得到一个对象，代表 getHeight 方法
    if ([c respondsToSelector:@selector(getHeight)]) {
            [c getHeight];
    }else{
        NSLog(@"请实现协议中 getHeight 方法");
    }

}

@end





