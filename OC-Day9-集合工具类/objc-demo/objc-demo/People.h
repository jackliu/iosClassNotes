//
//  People.h
//  objc-demo
//
//  Created by liu on 13-4-28.
//  Copyright (c) 2013年 liu. All rights reserved.
//  定义一个人，基本属性
//  基本行为

#import <Foundation/Foundation.h>

@interface People : NSObject

//基本属性
@property(nonatomic,retain)NSString *name;
//其他如，年龄、身高、性别 自己定义.....

//基本行为
-(void)eat;
-(void)sleep;
//衣食住行 每个都是行为


@end







