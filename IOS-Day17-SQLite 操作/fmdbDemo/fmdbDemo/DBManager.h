//
//  DBManager.h
//  fmdbDemo
//
//  Created by shangdejigou on 13-11-12.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//  负责得到 沙箱 中的 Documents 目录，iOS认为该目录安全
//  负责得到 数据库对象，能够管理代码与 数据库之间的所有操作
//  增、删、改、查

#import <Foundation/Foundation.h>

#import "FMDatabase.h"           //数据库管理类
#import "FMDatabaseAdditions.h"  //数据库管理的附加功能类


/**
 * @brief 对数据  链接进行管理，包括 获得连接，关闭连接
 * 可以建立长连接
 * 目前的代码要与数据库进行交互。首先必须得到数据库连接 对象
 */
@interface DBManager : NSObject{
    //数据库文件的名称
    NSString * _name;
}
/// 数据库操作对象，当数据库被建立时
// 数据库操作对象
// readonly 只有 get 没有  set 方法
@property (nonatomic, readonly) FMDatabase * dataBase;


/// 单例模式
//  仿造 通知中心得到对象的方法
+(DBManager *) defaultDBManager;

// 关闭数据库
- (void) close;


@end






