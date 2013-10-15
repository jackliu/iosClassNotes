//
//  Emple.h
//  objc-demo
//
//  Created by liu on 13-4-27.
//  Copyright (c) 2013年 liu. All rights reserved.
//(2)	这些人员都是职员(employee），有编号、姓名、月工资信息。月工资的计算方法是：经理固定月薪8000元，技术人员每小时100元，销售员按当月销售额4％提成，销售经理既拿固定月工资5000元也拿销售提成，销售提成为所管辖部门当月销售额的5‰。

#import <Foundation/Foundation.h>

@interface Emple : NSObject

@property(nonatomic,retain) NSString *number;
@property(nonatomic,retain) NSString *name;
@property(nonatomic,retain) NSNumber *pay;

-(id)init;
-(id)initWithNumber:(NSString *) _num andName:(NSString *) _name  andPay:(NSNumber *) _pay;

#pragma mark -  计算工资的方法
-(NSNumber *)getPay;

@end




