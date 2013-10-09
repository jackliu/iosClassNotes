//
//  Circle.m
//  ocCode4
//
//  Created by liu on 13-10-9.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Circle.h"

@implementation Circle

//同步 getter/setter 方法
@synthesize radius;  //radius 的 getter/setter 方法自动生成
@dynamic name;       //name 的 getter/setter 方法需要手动编写

#pragma mark - 属性存取方法
-(void)setName:(NSString *)_name
{
    name = _name;
}

-(NSString *)getMyName
{
    return name;
}


#pragma mark - 对象初始化方法
//初始化方法，设置属性值
//不带任何参数，创建空对象
-(id)init
{
    if (self == [super init]) {
        
    }
    return self;
}
//带一个参数，只给对象中 半径赋值
-(id)initWithRadius:(double)_radius
{
    if (self == [super init]) {
        radius = _radius;
    }
    
    return self;
}

//带两个参数，给对象中两个属性赋值
-(id)initWithRadius:(double)_radius andName:(NSString *)_name
{
    if (self == [super init]) {
        radius = _radius;
        name = _name;
    }
    return self;
}


#pragma mark - 求圆的面积方法
//求圆的面积
-(double)getArea
{
    return PI*radius*radius;
}


//打印所有属性值
-(void)printAllPropertys
{
    NSLog(@"radius = %lf , name = %@ ",radius,name);
}


//打印一个圆的半径，参数接收一个对象类型
-(void)print:(Circle *)c
{
    c.radius+= 100.0;
    NSLog(@"圆的半径修改为  %lf ",c.radius);
}


@end
