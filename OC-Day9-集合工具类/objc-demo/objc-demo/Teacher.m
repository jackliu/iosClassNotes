//
//  Teacher.m
//  objc-demo
//
//  Created by liu on 13-4-25.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

@synthesize techNumber,techSalary,techTitle;

-(Teacher *)init
{
    if (self = [super init]) {
        
    }
    return self;
}

-(Teacher *)initWithNumber:(NSString *)_number   andTitle:(NSString *)_title
                 andSalary:(int)_salary
                   andName:(NSString *) _name
                    andAge:(int) _age
                    andSex:(NSString *)_sex
                andAddress:(NSString *) _address
{
    self = [super initWithName:_name andAge:_age andSex:_sex andAddress:_address];
    
    self.techNumber = _number;
    self.techTitle=_title;
    self.techSalary = _salary;
    
    return self;
}

@end
