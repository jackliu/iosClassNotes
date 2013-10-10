//
//  Maninager.m
//  ocCode4
//
//  Created by liu on 13-10-9.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Maninager.h"

@implementation Maninager

@synthesize salary = _salary;

//初始化  Maniager 对象的时候，定义好工资
-(id)init
{
    //先调用父类初始化方法，然后判断，然后赋值给当前类对象
    if (self = [super init]) {
        _salary = 8000.0;
    }
    return self;
}


@end
