//
//  BBBViewController.m
//  tableViewDemo
//
//  Created by liu on 13-4-20.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "BBBViewController.h"

//要导航到的页面
#import "SubV1ViewController.h"
#import "SubV2ViewController.h"

@interface BBBViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *arr;
}

@end

@implementation BBBViewController

@synthesize table;

- (void)viewDidLoad
{
    [super viewDidLoad];
    //设置视图标题
    [self setTitle:@"带导航的表格"];
    
	//1、初始化数组
    arr = [NSArray arrayWithObjects:@"111",@"222",@"333",nil];
    
    //2、创建一个表格对象
    CGRect frame = [self.view bounds];
    table = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    [self.view addSubview:table];
    
    //3、设置表格的代理类和数据源对象
    table.dataSource = self;
    table.delegate =self;
    
    //4、刷新表格中的数据
    [table reloadData];
    
    
}



#pragma mark -
#pragma mark UITableViewDelegate Requested Methods
//得到所选择行的行号
-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    return indexPath;
}

//选中某行后的操作
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row = indexPath.row;
    if (row==0) {
        //第一行的导航
        SubV1ViewController *sb1 = [[SubV1ViewController alloc]init];
        [self.navigationController pushViewController:sb1 animated:YES];
    }
    if (row==1) {
        //第二行的导航
        SubV2ViewController *sb2 = [[SubV2ViewController alloc]init];
        [self.navigationController pushViewController:sb2 animated:YES];
    }

}


#pragma mark -
#pragma mark UITableViewDataSource Requested Methods
//确定表格中显示数据的行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arr count];
}

//设置表格中每个单元格中的数据
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return [self createTableCell:indexPath];
}


#pragma mark -
#pragma mark 为三个表格设置另外一种风格 UITableViewCellStyleSubtitle
-(UITableViewCell *)createTableCell:(NSIndexPath *)indexPath
{
    static NSString *ingredientsCellIdentifier = @"aaa";
    //1 先根据任意一个标示字符串，尝试从表格中取出一个单元格对象
    UITableViewCell *cell = [table dequeueReusableCellWithIdentifier:ingredientsCellIdentifier];
    
    //2 判断是否取出，如果没有则使用 数组中的数据创建一个新的单元格
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ingredientsCellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.showsReorderControl = YES;
    }

    //按照行号，一一配置每个 cell 的样式
    if (indexPath.row ==0) {
        cell.imageView.image = [UIImage imageNamed:@"cellImage1.png"];
        cell.textLabel.text = @"第一个单元格";
        cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    }
    
    if (indexPath.row == 1) {
        cell.imageView.image =[UIImage imageNamed:@"cellImage2.png"];
        cell.textLabel.text = @"第二个单元格";
        cell.detailTextLabel.text = @"单元格详细描述";
    }
    
    if (indexPath.row==2) {
        cell.imageView.image = [UIImage imageNamed:@"cellImage3.png"];
        cell.textLabel.text = @"第三格单元格";
        cell.detailTextLabel.text = @"详细描述";
    }
    
    return cell;
}










@end
