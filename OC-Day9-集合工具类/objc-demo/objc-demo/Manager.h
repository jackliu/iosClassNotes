//
//  Manager.h
//  objc-demo
//
//  Created by liu on 13-4-27.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Emple.h"

@interface Manager : Emple

-(id)init;
-(id)initWithNumber:(NSString *) _num andName:(NSString *) _name  andPay:(NSNumber *) _pay;

#pragma mark - 经理不满发工资的方法，要求重写
//本来可以直接调用 父类中的 getPay ，但是发现父类不满足需求
-(NSNumber *)getPay;

#pragma mark - 当前类中，重载方法
//重载的目的：做同一件事情，准备 多种方法，方法名称相同，但是参数不同
//重载后，做同一件事情，可以有更多种选择

//工作，自己单独干
-(void)doWork;
//工作，需要一个计划
-(void)doWork:(NSString *) plan;
//工作，需要计划、人手
-(void)doWork:(NSString *) plan  andPelope:(NSString *)people;
//工作，需要计划、人手、资金
-(void)doWork:(NSString *) plan andPelope:(NSString *)people andMoney:(NSNumber *) money;




@end





