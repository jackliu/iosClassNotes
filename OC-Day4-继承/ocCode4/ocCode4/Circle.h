//
//  Circle.h
//  ocCode4
//
//  Created by liu on 13-10-9.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PI 3.1415926


//定义一个圆形类
@interface Circle : NSObject
{
    double radius;  //半径
    NSString *name;
}

//返回半径，定义 setter/getter 方法
//@property 后面可以添加 修饰关键字，
//帮助编译器更好的管理属性值所占用的内存
//nonatomic   必加
//assing      属性类型是实数或代理对象时添加
//retain      属性类型是引用类型时添加  *
@property(nonatomic,assign) double radius;
@property(nonatomic,retain,getter = getMyName) NSString *name;

//初始化方法，设置属性值
//不带任何参数，创建空对象
-(id)init;
//带一个参数，只给对象中 半径赋值
-(id)initWithRadius:(double)radius;
//带两个参数，给对象中两个属性赋值
-(id)initWithRadius:(double)radius andName:(NSString *)name;


//求圆的面积
-(double)getArea;

//打印所有属性值
-(void)printAllPropertys;



//打印一个圆的半径，参数接收一个对象类型
-(void)print:(Circle *)c;

@end









