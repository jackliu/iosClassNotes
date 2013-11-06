//
//  RootViewController.m
//  tableviewDemo1
//
//  Created by shangdejigou on 13-11-5.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

@synthesize listData;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        //设置标题
        self.title = @"表格 Demo1";
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //创建表格中要显示的数据
    listData = @[@"施赛峰",@"孙俊",@"赵宁",@"郭赛",@"曾祥",@"陈健",@"蒋勋",@"程醇",@"于博坤",@"童浩威"];  //10 人
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
//确定整个表格视图中，有几个章节
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    //返回列表中数据的个数
    return listData.count;
}

//创建一个单元格，并往单元格中放入数据,由代理类帮我们循环 10 次
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //静态的 单元格标记，标记自定义
    static NSString *CellIdentifier = @"RootViewController";
    
    //往表格中放入单元格，先从现有的表格中取出一个
    //dequeue   出列
    //dequeueReusableCellWithIdentifier 按照指定 标记
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    //判断，为空说明单元格不存在
    if (cell == nil) {
        //手动创建一个指定样式的单元格，并指定   标记
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    //得到当前行的索引编号
    NSUInteger row = [indexPath row];
    
    //添加图片
    UIImage *img1 = [UIImage imageNamed:@"face_02.png"];
    UIImage *img2 = [UIImage imageNamed:@"face_08.png"];
    if (row %2 ==0) {
        cell.imageView.image = img1;  //偶数行
    }else{
        cell.imageView.image = img2;  //奇数行
    }
    //选中，切换图片
    UIImage *img = [UIImage imageNamed:@"face_sel.png"];
    cell.imageView.highlightedImage = img; //选中
    
    
    
    //设置单元格文字
    cell.textLabel.text = [listData objectAtIndex:row];
    //单元格的明细
    cell.detailTextLabel.text = [NSString stringWithFormat:@"编号: %d",row];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate
//当用户点击 表格后的操作方法
-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //判断当前选中的是哪一行
    NSUInteger numRow = [indexPath row];
    if (0 == numRow) {
        return nil;
    }
    return indexPath;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     DetailViewController *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    //得到行号
    NSUInteger nRow = [indexPath row];
    NSString *name = [listData objectAtIndex:nRow];
    NSString *message = [NSString stringWithFormat:@"你好:%@",name];
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"选中提示" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [alert show];
    //清除被选中的痕迹 ，单元格背景色变蓝色
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
