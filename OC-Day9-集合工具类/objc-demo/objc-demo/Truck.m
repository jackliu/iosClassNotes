//
//  Truck.m
//  objc-demo
//
//  Created by liu on 13-4-24.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Truck.h"

@implementation Truck

//使用 综合、同步  关键字，自动为所有属性生成  getter/setter 方法
//实现 头文件中隐含 声明的 getter/setter  方法
@synthesize wheels;
@synthesize weight;
@synthesize passenger_load;
@synthesize payload;


//可以连写
@synthesize name,logo,address,aaa;


@end




