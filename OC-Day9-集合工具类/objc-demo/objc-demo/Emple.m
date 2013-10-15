//
//  Emple.m
//  objc-demo
//
//  Created by liu on 13-4-27.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Emple.h"

@implementation Emple

@synthesize number,name,pay;


-(id)init
{
    if (self = [super init]) {
        
    }
    return self;
}

-(id)initWithNumber:(NSString *) _num andName:(NSString *) _name  andPay:(NSNumber *) _pay
{
    self.name = _name;
    self.number = _num;
    self.pay = _pay;
    return self;
}


#pragma mark -  计算工资的方法
-(NSNumber *)getPay
{
    return [NSNumber numberWithInt:1690];
}



@end



