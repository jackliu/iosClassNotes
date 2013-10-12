//
//  Vehicle.h
//  objc-demo
//
//  Created by liu on 13-4-24.
//  Copyright (c) 2013年 liu. All rights reserved.
//  交通工具类
//  包含的数据成员有车轮个数wheels和车重weight

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject

//定义属性
@property(nonatomic,assign)int wheels;
@property(nonatomic,assign)double weight;

//定义初始化方法
//先定义默认初始化方法，从 NSObject 中继承的
-(Vehicle *)init;
//专门为自己定一个初始化方法，给指定的两个属性赋值
-(Vehicle *)initWithWheels:(int) _wheels andWeight:(double) _weight;


@end



