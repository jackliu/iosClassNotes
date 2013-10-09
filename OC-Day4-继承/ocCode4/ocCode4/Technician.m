//
//  Technician.m
//  ocCode4
//
//  Created by liu on 13-10-9.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Technician.h"

@implementation Technician

@synthesize workTime;

-(double)getTechicianSalary
{
    //技术人员，按小时拿钱
    salary = 100 * workTime;
    return salary;
}

@end
