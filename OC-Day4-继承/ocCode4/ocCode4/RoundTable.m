//
//  RoundTable.m
//  ocCode4
//
//  Created by liu on 13-10-9.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "RoundTable.h"

@implementation RoundTable

@synthesize color,height;

//不用定义计算面积的方法，重用
-(void)print
{
    NSLog(@"圆桌的面积 %lf , 高度 %lf, 颜色 %@",[super getArea],[self height],[self color]);
}

@end
