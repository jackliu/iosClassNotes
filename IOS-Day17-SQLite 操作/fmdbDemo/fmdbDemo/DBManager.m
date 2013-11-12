//
//  DBManager.m
//  fmdbDemo
//
//  Created by shangdejigou on 13-11-12.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "DBManager.h"

//数据库文件的名称
#define kDefaultDBName @"voice.sqlite"

@implementation DBManager


//定义静态的 对象引用变量
static DBManager * _sharedDBManager;

//获得 当前类对象的 方法
+ (DBManager *) defaultDBManager {
	if (!_sharedDBManager) {
		_sharedDBManager = [[DBManager alloc] init];
	}
	return _sharedDBManager;
}

- (void) dealloc {
    [self close];
}

//不在 头文件中声明的方法，叫私有方法，能够让对象无法访问
- (id) init {
    self = [super init];
    if (self) {
        int state = [self initializeDBWithName:kDefaultDBName];
        if (state == -1) {
            NSLog(@"数据库初始化失败");
        } else {
            NSLog(@"数据库初始化成功");
        }
    }
    return self;
}

/**
 * @brief 初始化数据库操作
 * @param name 数据库名称
 * @return 返回数据库初始化状态， 0 为 已经存在，1 为创建成功，-1 为创建失败
 */
- (int) initializeDBWithName : (NSString *) name {
    if (!name) {
		return -1;  // 返回数据库创建失败
	}
    // 得到 沙盒 中的 Documents 目录，固定代码
    ///Users/SDJG/Library/Application Support/iPhone Simulator/6.1/Applications/5CBCA897-0D9D-49CB-83D7-DD3D52F7BDC8/Documents
    NSString * docp = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES) objectAtIndex:0];
    
    //在 沙箱的目录路径后面，添加 数据库文件名，得到完整路径
    ///Users/SDJG/Library/Application Support/iPhone Simulator/6.1/Applications/5CBCA897-0D9D-49CB-83D7-DD3D52F7BDC8/Documents/voice.sqlite
	_name = [docp stringByAppendingString:[NSString stringWithFormat:@"/%@",name]];
    
    //使用 文件管理类，在制定的目录中创建文件，不管内容
	NSFileManager * fileManager = [NSFileManager defaultManager];
    BOOL exist = [fileManager fileExistsAtPath:_name];
    //连接数据库
    [self connect];
    
    if (!exist) {
        return 0;
    } else {
        return 1;          // 返回 数据库已经存在
        
	}
    
}

/// 连接数据库
- (void) connect {
	if (!_dataBase) {
        //等价与调用  >sqlite3 voice.sqlite 回车创建
        //这里才真正创建出 voice.sqlite 数据库文件
		_dataBase = [[FMDatabase alloc] initWithPath:_name];
	}
	if (![_dataBase open]) {
		NSLog(@"不能打开数据库");
	}
}


/// 关闭连接
- (void) close {
	[_dataBase close];
    _sharedDBManager = nil;
}








@end
