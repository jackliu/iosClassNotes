//
//  SUserDB.h
//  fmdbDemo
//
//  Created by shangdejigou on 13-11-12.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//  在这个类中，对表中数据做增删改查操作

#import <Foundation/Foundation.h>
#import "DBManager.h"   //数据库连接类

@class SUser;

@interface SUserDB : NSObject{
    FMDatabase * _db;
}


/**
 * @brief 如果是第一个使用数据库，在空文件中创建数据库
 */
- (void) createDataBase;

//增加一行数据
-(void)saveSuser:(SUser *)user;

//修改一条数据
-(void)updataSUser:(SUser *)user;

/**
 * @brief 删除一条用户数据
 *
 * @param uid 需要删除的用户的id
 */
- (void) deleteUserWithId:(NSString *) uid;


//查询所有数据
-(NSArray *)findAll;


//查询指定条件的数据
/**
 * @brief 模拟分页查找数据。取uid大于某个值以后的limit个数据
 *
 * @param uid
 * @param begin 从第几条数据开始查询
 * @param limit 每次最多取几条数据
 */
- (NSArray *) findWithUid:(NSString *) uid andBegin:(int)begin andLimit:(int) limit;


@end












