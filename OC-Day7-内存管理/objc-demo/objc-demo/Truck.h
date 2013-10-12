//
//  Truck.h
//  objc-demo
//
//  Created by liu on 13-4-24.
//  Copyright (c) 2013年 liu. All rights reserved.
//  编写一个程序 卡车类truck 包含的数据成员有车轮个数wheels和车重weight。载人数passenger_load和载重量payload，每个类都有相关数据的输出方法。

#import <Foundation/Foundation.h>

@interface Truck : NSObject

/*
{
    int wheels;          //车轮个数
    double weight;       //车重
    int passenger_load;  //载人数
    double payload;      //载货的重量
}
//使用旧式存取器
-(int)wheels;
-(void)setWheels:(int) _wheels;
//...
*/

//使用新式的属性语法
//只要使用了 @property  ，默认为属性声明 getter/setter 方法
//为了更好的管理这些属性 所需要的内存，补充修饰符
//修饰基本类型，使用 assign
@property(nonatomic,assign) int wheels;          //车轮个数
@property(nonatomic,assign) double weight;       //车重
@property(nonatomic,assign) int passenger_load;  //载人数
@property(nonatomic,assign) double payload;      //载货的重量
//补充 对象类型的属性
//retain 确保内存中只有一块内存，引用计数，每用一次自动 +1
@property(nonatomic,retain) NSString *name;
//copy  新建一块内存，复制原内存中的值，可以不考虑之前内存d引用计数
//新内存块的引用计数是重新开始计算的
//readonly 说明 logo 只有 getter ，没有  setter 方法
@property(nonatomic,copy,readonly)NSString *logo;  //车的品牌
//weak  弱，内存不需要对这个属性所占内存进行管理,可以不管
@property(nonatomic,weak) NSString *address;  //车的所在地
//strong   强，需要对这个属性的内存进行严格管理
@property(nonatomic,strong,getter = getBBB)NSString *aaa;

@end





