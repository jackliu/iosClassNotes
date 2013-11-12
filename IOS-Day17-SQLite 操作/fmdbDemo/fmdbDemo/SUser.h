//
//  SUser.h
//  fmdbDemo
//
//  Created by shangdejigou on 13-11-12.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//  对应着数据库的表，创建的类。一个对象保存数据库中一行数据
//  实体类

#import <Foundation/Foundation.h>

@interface SUser : NSObject

//属性与表中的列一一对应
@property (nonatomic, copy) NSString * uid;
@property (nonatomic, copy) NSString * name;
@property (nonatomic, copy) NSString * description;

@end







