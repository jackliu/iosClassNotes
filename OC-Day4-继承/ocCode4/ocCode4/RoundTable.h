//
//  RoundTable.h
//  ocCode4
//
//  Created by liu on 13-10-9.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Circle.h"

//继承后，圆桌可以直接调用 圆类中的属性和方法
@interface RoundTable : Circle
{
    //不用定义半径，重用父类中的属性
    //只添加父类中没有的属性
    NSString *color;
    double height;
}

@property(nonatomic,retain)NSString *color;
@property(nonatomic,assign)double height;

//不用定义计算面积的方法，重用
-(void)print;

@end





