//
//  LiteEngine.m
//  QSqlite
//
//  Created by LDCI on 11-1-24.
//  Copyright 2011 ldci. All rights reserved.
//

#import "LiteEngine.h"


@implementation LiteEngine



- (BOOL)initDatabase:(NSString *)dbName
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *path = [documentsDirectory stringByAppendingPathComponent:dbName];

    NSLog(@"Database file have already existed.");
    if(sqlite3_open([path UTF8String], &sqliteDB)  !=  SQLITE_OK) 
    {
        sqlite3_close(sqliteDB);
        NSLog(@"Error2: open database file.");
        return NO;
    }

    //createChannelsTable();
    [self createChannelsTable];
    return YES;
}

- (BOOL)createChannelsTable
{
    char *sql = "CREATE TABLE member(id integer primary key, name text, age integer, addr text, sex text)";
	
    sqlite3_stmt *statement;
    //编译字节代码
    if(sqlite3_prepare_v2(sqliteDB, sql, -1, &statement, nil) != SQLITE_OK)
    {
        NSLog(@"Error3: failed to prepare statement:create channels table");
        return NO;
    }

    int success = sqlite3_step(statement); //启动执行
    sqlite3_finalize(statement); //关闭statement，释放资源
    if ( success != SQLITE_DONE)
    {
        NSLog(@"Error4: failed to dehydrate:CREATE TABLE channels");
        return NO;
    }
    NSLog(@"Create table 'member' successed.");
    return YES;
}

- (BOOL)insertOneChannel:(NSString *)name 
                                    cage:(int)age 
                             caddress:(NSString *)addr 
                                    csex:(NSString *)sex
{
    sqlite3_stmt *statement;
    static char *sql = "INSERT INTO member(name,age,addr,sex) VALUES(?,?,?,?)";
	
    //问号的个数要和(cid,title,imageData,imageLen)里面字段的个数匹配，代表未知的值，将在下面将值和字段关联。
    int success = sqlite3_prepare_v2(sqliteDB, sql, -1, &statement, NULL);
    if (success != SQLITE_OK)
    {
        NSLog(@"Error5: failed to insert:member");
        return NO;
    }
	
    //这里的数字1，2，3，4代表第几个问号
    //sqlite3_bind_int(statement, 0, cid);
    sqlite3_bind_text(statement, 1, [name UTF8String], -1, SQLITE_TRANSIENT);
    sqlite3_bind_int(statement, 2, age);
    sqlite3_bind_text(statement, 3, [addr UTF8String], -1, SQLITE_TRANSIENT);
    sqlite3_bind_text(statement, 4, [sex UTF8String], -1, SQLITE_TRANSIENT);
                 
    success = sqlite3_step(statement);
    sqlite3_finalize(statement);
    if (success == SQLITE_ERROR)
    {
        NSLog(@"Error: failed to insert into the database with message.");
        return NO;
    } 

    NSLog(@"sucess: Insert Channel.");
    return YES;
}

- (void)getChannels:(NSMutableString*)contents
{
    sqlite3_stmt *statement = nil;
    char *sql = "SELECT * FROM member";
	
    if (sqlite3_prepare_v2(sqliteDB, sql, -1, &statement, NULL) != SQLITE_OK)
    {
        NSLog(@"Error: failed to prepare statement with message:get channels.");
    }
    
    //查询结果集中一条一条的遍历所有的记录，这里的数字对应的是列值。
    while (sqlite3_step(statement) == SQLITE_ROW)
    {
        [contents appendFormat:@"\r\n"];
        char* name     = (char*)sqlite3_column_text(statement, 1);
        if (name)
        {
            [contents appendFormat:@" %@", [NSString stringWithCString:name]];
        }

        int age       = sqlite3_column_int(statement, 2);
        [contents appendFormat:@" %i", age];

        char* addr     = (char*)sqlite3_column_text(statement, 3);
        if (addr)
        {
            [contents appendFormat:@" %@", [NSString stringWithCString:addr]];
        }

        char* sex     = (char*)sqlite3_column_text(statement, 4);
        if (sex)
        {
            [contents appendFormat:@" %@", [NSString stringWithCString:sex]];
        }
    }
    sqlite3_finalize(statement);
}

- (BOOL)isHasTable:(NSString *)tableName
{
    sqlite3_stmt *statement = nil;

    char *sql = (char *)malloc(256);
    memset(sql, 0, 256);
    sprintf(sql, "SELECT COUNT(*) FROM sqlite_master where type='table' and name='%s'", [tableName cString]);

    if (sqlite3_prepare_v2(sqliteDB, sql, -1, &statement, NULL) != SQLITE_OK)
    {
        NSLog(@"Error: failed to prepare statement with message:get channels.");
        free(sql);
        return NO;
    }
    
    int nRet = sqlite3_step(statement);
    sqlite3_finalize(statement);
    free(sql);
    if(nRet == SQLITE_DONE)
    {
        return NO;
    }
    return YES;
}

- (void)closeDatabase
{
    if (sqliteDB)
    {
    sqlite3_close(sqliteDB);
    }
}

- (void)dealloc
{
    [self closeDatabase];
    [super dealloc];
}

@end
