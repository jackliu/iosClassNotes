//
//  DViewController.m
//  tableViewDemo
//
//  Created by liu on 13-4-24.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "DViewController.h"

@interface DViewController ()

@end

@implementation DViewController

@synthesize table,keys,names;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	//设置标题
    self.title  = @"分组表格";
    //得到表格中显示的数据
    [self getMyDatas];
    
    //初始化表格对象，指定样式为 Grouped
    CGRect frame = [self.view bounds];
    self.table = [[UITableView alloc]initWithFrame:frame style:UITableViewStyleGrouped];
    //self.table = [[UITableView alloc]initWithFrame:frame style:UITableViewStylePlain];
    //设置表格的代理对象
    self.table.dataSource = self;
    self.table.delegate = self;
    //将表格添加到当前视图中
    [self.view addSubview:table];
}


#pragma mark - 从 plist 文件中初始化数据
-(void)getMyDatas
{
    NSString* path = [[NSBundle mainBundle] pathForResource:@"foods" ofType:@"plist"];
    
    NSDictionary* dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    self.names = dict;
    
    NSArray* arrays = [[names allKeys] sortedArrayUsingSelector:@selector(compare:)];
    self.keys = arrays;
}

#pragma mark - UITableViewDataSource 方法
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [keys count];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSString *k = [keys objectAtIndex:section];
    NSArray  *klist = [names objectForKey:k];
    return [klist count];
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *keyname = [keys objectAtIndex:section];
    return keyname;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger section = [indexPath section];
    NSUInteger row = [indexPath row];
    
    NSString *keyStr =  [keys objectAtIndex:section];
    NSArray *nameList = [names objectForKey:keyStr];
    
    static NSString *ident = @"aa";
    
    UITableViewCell *cell = [table dequeueReusableCellWithIdentifier:ident];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ident];
    }
    
    cell.textLabel.text = [nameList objectAtIndex:row];
    
    return cell;
}


//索引列
-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    NSArray *indexTitlesArray = [NSArray arrayWithObjects:@"北",@"南",@"东",@"西",@"中",nil];
    return indexTitlesArray;
}

-(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    NSArray *indexTitlesArray = [NSArray arrayWithObjects:@"北",@"南",@"东",@"西",@"中",nil];
    return [indexTitlesArray indexOfObject:title];
}





@end
