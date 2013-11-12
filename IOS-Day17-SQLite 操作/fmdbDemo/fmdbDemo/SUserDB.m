//
//  SUserDB.m
//  fmdbDemo
//
//  Created by shangdejigou on 13-11-12.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "SUserDB.h"
#import "FMResultSet.h"
#import "SUser.h"

//定义表名的宏
#define kUserTableName @"SUser"

@implementation SUserDB


- (id) init {
    self = [super init];
    if (self) {
        //首先查看是否建立 vaice.sqlite 的数据库，
        //如果未建立，则建立数据库
        _db = [DBManager defaultDBManager].dataBase;
        
    }
    return self;
}

/**
 * @brief 创建数据库
 */
- (void) createDataBase {
    //FMResultSet 对象，保存查询的结果
    FMResultSet * set = [_db executeQuery:[NSString stringWithFormat:@"select count(*) from sqlite_master where type ='table' and name = '%@'",kUserTableName]];
    //判断结果中是否有数据
    [set next];
    //得到结果中数据的个数
    NSInteger count = [set intForColumnIndex:0];
    
    BOOL existTable = !!count;
    
    if (existTable) {
        // TODO:是否更新数据库
        NSLog(@".........数据库已经存在");
        //[AppDelegate showStatusWithText:@"数据库已经存在" duration:2];
    } else {
        // 如果数据库文件内部是空的，使用 DDL 创建表
        // TODO: 插入新的数据库
        NSString * sql = @"CREATE TABLE SUser (uid INTEGER PRIMARY KEY AUTOINCREMENT  NOT NULL, name VARCHAR(50), description VARCHAR(100))";
        //通过 FMDataBase 对象执行 DDL 语句
        BOOL res = [_db executeUpdate:sql];
        
        if (!res) {
            NSLog(@"数据库创建失败");
            //[AppDelegate showStatusWithText:@"数据库创建失败" duration:2];
        } else {
            NSLog(@"数据库创建成功");
            //[AppDelegate showStatusWithText:@"数据库创建成功" duration:2];
        }
    }
}

//增加一行数据
-(void)saveSuser:(SUser *)user
{
    //创建可变长字符串，组合得到 SQL 语句，更灵活的 SQL 语句
    NSMutableString * query = [NSMutableString stringWithFormat:@"INSERT INTO SUser"];
    NSMutableString * keys = [NSMutableString stringWithFormat:@" ("];
    NSMutableString * values = [NSMutableString stringWithFormat:@" ( "];
    NSMutableArray * arguments = [NSMutableArray arrayWithCapacity:5];
    if (user.name) {
        [keys appendString:@"name,"];
        [values appendString:@"?,"];
        [arguments addObject:user.name];  //给 SQL 中的 ? 赋值
        //insert into SUser (name) values(?)
    }
    if (user.description) {
        [keys appendString:@"description,"];
        [values appendString:@"?,"];
        [arguments addObject:user.description];
        ////insert into SUser (name,description) values(?,?)
    }
    [keys appendString:@")"];
    [values appendString:@")"];
    [query appendFormat:@" %@ VALUES%@",
     [keys stringByReplacingOccurrencesOfString:@",)" withString:@")"],
     [values stringByReplacingOccurrencesOfString:@",)" withString:@")"]];
    
    //insert into SUser (name,description) values(?,?)
    NSLog(@"%@",query);
    NSLog(@"插入一条数据到数据库 ");
    //[AppDelegate showStatusWithText:@"插入一条数据" duration:2.0];
    //编程时采用 预编译的 SQL 语句，SQL 语句中值由  ? 表示
    //真正在执行 SQL 语句时才赋值
    //FMDataBase  类中  executeUpdate: 方法，执行"增删改"操作
    [_db executeUpdate:query withArgumentsInArray:arguments];
}

//修改一条数据
-(void)updataSUser:(SUser *)user
{}


/**
 * @brief 删除一条用户数据
 *
 * @param uid 需要删除的用户的id
 */
- (void) deleteUserWithId:(NSString *) uid
{}


//查询所有数据
-(NSArray *)findAll;


//查询指定条件的数据
/**
 * @brief 模拟分页查找数据。取uid大于某个值以后的limit个数据
 *
 * @param uid
 * @param limit 每页取多少个
 */
- (NSArray *) findWithUid:(NSString *) uid limit:(int) limit;


@end
