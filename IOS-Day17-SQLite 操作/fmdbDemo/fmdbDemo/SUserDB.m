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

//插入数据
#define INSETT_SQL @"insert into SUser (name,description) values(?,?)"
//更新数据
#define UPDATA_SQL @"update SUser set name=?,description=? where uid=?"
//删除数据
#define DELTET_SQL @"delete from SUser where uid=?"
//查询数据
#define SELECTAll_SQL @"select * from SUser"

#define SELECTLimit_SQL @"select * from SUser limit "


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
    //FMResultSet 对象，查询 SUser 表是否存在
    FMResultSet * set = [_db executeQuery:[NSString stringWithFormat:@"select count(*) from sqlite_master where type ='table' and name = '%@'",kUserTableName]];
    //判断结果中是否有数据
    [set next];
    //得到结果中数据的个数
    NSInteger count = [set intForColumnIndex:0];
    
    BOOL existTable = !!count;
    
    if (existTable) {
        // TODO:是否更新数据库
        NSLog(@".........数据库表已经存在");
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
    /*
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
     */
    NSString *sql = INSETT_SQL;
    
    //给 SQL 中的 ? 赋值
     NSMutableArray * arguments = [NSMutableArray arrayWithCapacity:5];
    [arguments addObject:user.name];
    [arguments addObject:user.description];
    
    //insert into SUser (name,description) values(?,?)
    NSLog(@"SQL 语句为 : %@",sql);
    NSLog(@"插入一条数据到数据库 ");
    //[AppDelegate showStatusWithText:@"插入一条数据" duration:2.0];
    //编程时采用 预编译的 SQL 语句，SQL 语句中值由  ? 表示
    //真正在执行 SQL 语句时才赋值
    //FMDataBase  类中  executeUpdate: 方法，执行"增删改"操作
    [_db executeUpdate:sql withArgumentsInArray:arguments];
}

//修改一条数据
-(void)updataSUser:(SUser *)user
{
    NSString *sql = UPDATA_SQL;
    
    //给 SQL 中的 ? 赋值
    NSMutableArray * arguments = [NSMutableArray arrayWithCapacity:5];
    [arguments addObject:user.name];
    [arguments addObject:user.description];
    [arguments addObject:user.uid];
    
    NSLog(@"SQL 语句为 : %@",sql);
    NSLog(@"更新一条数据到数据库 ");
    //[AppDelegate showStatusWithText:@"插入一条数据" duration:2.0];
    //FMDataBase  类中  executeUpdate: 方法，执行"增删改"操作
    [_db executeUpdate:sql withArgumentsInArray:arguments];
}


/**
 * @brief 删除一条用户数据
 *
 * @param uid 需要删除的用户的id
 */
- (void) deleteUserWithId:(NSString *) uid
{
    NSString *sql = DELTET_SQL;
    
    //给 SQL 中的 ? 赋值
    NSMutableArray * arguments = [NSMutableArray arrayWithCapacity:5];
    [arguments addObject:uid];
    
    NSLog(@"SQL 语句为 : %@",sql);
    NSLog(@"删除指定 id 的 一条数据 ");
    //[AppDelegate showStatusWithText:@"插入一条数据" duration:2.0];
    //FMDataBase  类中  executeUpdate: 方法，执行"增删改"操作
    [_db executeUpdate:sql withArgumentsInArray:arguments];
}


//查询所有数据
-(NSArray *)findAll
{
    //执行查询 executeQuery
    //得到的查询结果是一个集合，包含多条数据
    FMResultSet * rs = [_db executeQuery:SELECTAll_SQL];
    
    //新建保存查询结果的数组，长度由 [rs columnCount]决定
    NSMutableArray * array = [NSMutableArray arrayWithCapacity:[rs columnCount]];
    
    //关键代码 [rs next] 拨动游标，判断是否有下一行数据
	while ([rs next]) {
        //如果有下一行数据，取出这些数据，保存到  实体对象中
        //实体类对象
        SUser * user = [[SUser alloc]init];
        
        /*
        create table SUser(
            uid int,
            name varchar(30),
            description varchar(30)
        );
         column1 column2  column3     column4 ....
         -------------------------------------
         |  uid |  name  |description|   |
         -------------------------------------
    row1 |      |1*2单元格|
    row2 |------------------
    row3 |
         -------------------------------------
         
         FMResultSet rs: 包含上面表格中所有的单元格
        while( [rs next]){}: 每次得到一行
         [rs intForColumn:@""] : 在一行中，按照名称或索引取出单元格的值
         
         
        //方法一，按照列的索引号取值
       uid  [rs intForColumnIndex:1];     //表的第一列
       name [rs stringForColumnIndex:2];  //表的第二列
        description [rs stringForColumnIndex:3];//表的第三列
        //方法二，按照列的名称取值
        uid [rs intForColumn:@"uid"];
        name [rs stringForColumn:@"name"];
        description [rs stringForColumn:@"description"];
        */
        
        //从 rs 中按照列的类型取值
        user.uid = [rs stringForColumn:@"uid"];
        user.name = [rs stringForColumn:@"name"];
        user.description = [rs stringForColumn:@"description"];
        //保存每次循环一行时，得到的 实体对象
        [array addObject:user];
	}
    
    //循环结束，所有行的数据都封装到 实体对象中，实体对象又被放入数组
    
	[rs close];
    return array;
}


//查询指定条件的数据
/**
 * @brief 模拟分页查找数据。取uid大于某个值以后的limit个数据
 *
 * @param uid
 * @param limit 每页取多少个
 */
- (NSArray *) findWithUid:(NSString *) uid andBegin:(int)begin andLimit:(int) limit
{
    NSMutableString * query = [NSMutableString stringWithString:SELECTLimit_SQL];
    [query appendFormat:@"%d,%d",begin,limit];
    
    FMResultSet *rs = [_db executeQuery:query];
    
    
    
    
}

@end




