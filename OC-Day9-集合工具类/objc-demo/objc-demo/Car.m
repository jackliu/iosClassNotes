//
//  Car.m
//  objc-demo
//
//  Created by liu on 13-4-24.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Car.h"

@implementation Car

@synthesize passenger_load;

//初始化函数
-(Car *)init
{
    if (self = [super init]) {
        
    }
    return self;
}

-(Car *)initWithWheels:(int) _wheels
             andWeight:(double)_weight
          andPassenger:(int) _passengerLoad
{
    //先初始化父类的属性值
    //[super initWithWheels:_wheels andWeight:_weight];
    //self 自己，可以直接调用父类中的属性
    self.wheels = _wheels;
    self.weight = _weight;
    
    //再初始化自己的属性值
    self.passenger_load = _passengerLoad;
    return self;
}




@end
