//
//  Peson.m
//  objc-demo
//
//  Created by liu on 13-4-25.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Peson.h"

@implementation Peson

//实现 getter/setter 方法
@synthesize name,age,sex,address;

#pragma mark -
#pragma mark 默认初始化函数
-(Peson *)init
{
    if (self=[super init]) {
        
    }
    return self;
}

#pragma mark - 带参数的初始化函数
-(Peson *)initWithName:(NSString *) _name
                andAge:(int) _age
                andSex:(NSString *)_sex
            andAddress:(NSString *) _address
{
    self.name = _name;
    self.age = _age;
    self.sex = _sex;
    self.address = _address;
    
    return self;
}





@end





