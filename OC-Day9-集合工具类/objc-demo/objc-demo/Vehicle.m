//
//  Vehicle.m
//  objc-demo
//
//  Created by liu on 13-4-24.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

//属性同步，自动实现 getter/setter 方法
@synthesize weight,wheels;


//先定义默认初始化方法，从 NSObject 中继承的
//init 方法主要目的，想让父类帮我们初始化
-(Vehicle *)init
{
    /*
    //当前类的对象，自己的对象，可以调用当前中定义的所有属性he方法
    self.wheels;
    //当前类，父类的对象,NSObject 的对象，可以调用NSObject 类中定义的方法
    [super init]
    */
    //让父类帮我们创建当前的对象
    if (self = [super init]) {
        //如果创建成功，就用父类创建的对象
    }
    //如果不成功，就返回自己,不用父类创建的
    return self;
}

//专门为自己定一个初始化方法，给指定的两个属性赋值
-(Vehicle *)initWithWheels:(int) _wheels andWeight:(double) _weight
{
    //给当前对象的两个属性赋值
    self.wheels = _wheels;
    self.weight = _weight;
    
    return self;
}



@end



