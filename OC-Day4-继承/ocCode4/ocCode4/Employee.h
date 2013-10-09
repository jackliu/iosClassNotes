//
//  Employee.h
//  ocCode4
//
//  Created by liu on 13-10-9.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject
{
    NSString *empNumber;
    NSString *empName;
    double salary;  //工资
}

@property(nonatomic,retain)NSString *empNumber;
@property(nonatomic,retain)NSString *empName;
@property(nonatomic,assign)double salary;

@end




