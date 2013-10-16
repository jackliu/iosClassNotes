//
//  Car.m
//  ocDay10
//
//  Created by liu on 13-10-16.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Car.h"

@implementation Car

@synthesize name,price;

//比较方法可以扩展
//按照价格进行比较
-(NSComparisonResult)compareByPrice:(Car *)otherCar
{
    return [[self price] compare:[otherCar  price]];
}


//定义对象调用的方法
//可以把多辆汽车的对象，放入集合中，通过集合调用这些方法
-(void)drive
{
    NSLog(@"%@ 车开动....",[self name]);
}


-(void)stop
{
    NSLog(@"%@ 车停止....",[self name]);
}



@end







