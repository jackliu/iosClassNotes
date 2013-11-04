//
//  AAAViewController.m
//  tableViewDemo
//
//  Created by liu on 13-4-20.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "AAAViewController.h"

@interface AAAViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation AAAViewController

@synthesize timeZones;
@synthesize table;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"普通表格";
    
    //1、初始化时区数组
    timeZones = [NSTimeZone knownTimeZoneNames];
    NSLog(@"%d",[timeZones count]);
    
    //2 、把当前视图对象存入视图
    self.table = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, (460-44)) style:UITableViewStylePlain];
    table.delegate = self;
    table.dataSource = self;
    [table reloadData];
    
    [self.view addSubview:table];
    
}


#pragma mark - Table view data source
/*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 0;
}
*/
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [timeZones count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //设置一个从表格中取 cell 的字符串标示符
    static NSString *CellIdentifier = @"Cell";
    //尝试取出一个 cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    //如果无法取出，就新建一个
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    //把 数据放入当前 cell
    NSString *timeZoneName = [timeZones objectAtIndex:indexPath.row];
    NSLog(@"%@",timeZoneName);
    cell.textLabel.text = timeZoneName;
    
    return cell;
}

#pragma mark - Table view delegate
/*
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
*/

@end
