//
//  Manager.m
//  objc-demo
//
//  Created by liu on 13-4-27.
//  Copyright (c) 2013年 liu. All rights reserved.
//   经理固定月薪8000元

#import "Manager.h"

@implementation Manager


-(id)init
{
    if (self = [super init]) {
        
    }
    return self;
}

-(id)initWithNumber:(NSString *) _num andName:(NSString *) _name  andPay:(NSNumber *) _pay
{
    self = [super initWithNumber:_num andName:_name andPay:_pay];
    return self;
}


#pragma mark - 子类重写，父类中的方法
-(NSNumber *)getPay
{
    return [self pay];
}

#pragma mark - 当前类中，重载方法
-(void)doWork
{}




@end





