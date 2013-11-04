//
//  CCCViewController.m
//  tableViewDemo
//
//  Created by liu on 13-4-23.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "CCCViewController.h"

@interface CCCViewController ()

@end

@implementation CCCViewController

@synthesize table;
@synthesize datas,images,details;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"带图片的表格"];
	//得到所有数据
    [self getMyDatas];
    
    //创建一个表格对象
    CGRect frame = [self.view bounds];
    table = [[UITableView alloc]initWithFrame:frame style:UITableViewStylePlain];
    //指定表格数据源和代理
    table.dataSource = self;
    table.delegate = self;
    
    //添加表格到当前视图中
    [self.view addSubview:table];
    
}

#pragma mark - 初始化表格中的数据
-(void)getMyDatas
{
    NSArray* tmpArray = [[NSArray alloc] initWithObjects:@"鲁菜",@"粤菜",@"川菜",@"湘菜",@"浙菜",@"杭帮菜",@"东北菜",@"京菜",nil];
    self.datas = tmpArray;
    
    NSArray* tmpImgArray = [[NSArray alloc] initWithObjects:
                            @"face_01",@"face_02",@"face_03",@"face_04",
                            @"face_05",@"face_06",@"face_07",@"face_08",nil];
    self.images = tmpImgArray;
    
    NSArray* tmpDataArray = [[NSArray alloc]
                             initWithObjects:
                             @"这个味道，比较咸",
                             @"这个味道，比较甜",
                             @"这个味道，比较辣",
                             @"这个味道，比较麻辣",
                             @"这个味道,比较甜",
                             @"这个味道,比较甜酸",
                             @"这个分量比较足",
                             @"这个比较不一样",
                             nil];
    self.details = tmpDataArray;
}

#pragma mark - UITableViewDelegate
//得到所选择的行号
-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    return indexPath;
}

//选中某行后的操作
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row = indexPath.row;
    NSString *message = [[NSString alloc]initWithFormat:@"你选择的是:%@",[datas objectAtIndex:row]];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:message delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    
    [alert show];
}



#pragma mark - UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [datas count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ident = @"aa";
    UITableViewCell *cell = [table dequeueReusableCellWithIdentifier:ident];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ident];
    }
    //每行的行号
    NSUInteger row = indexPath.row;
    //根据行号设置，每行的内容、明细
    cell.textLabel.text = [datas objectAtIndex:row];
    cell.detailTextLabel.text = [details objectAtIndex:row];
    
    //每个图片设置两种，一种是正常显示的，一种是用户选中后的
    cell.imageView.image =[UIImage imageNamed:[images objectAtIndex:row]];
    cell.imageView.highlightedImage = [UIImage imageNamed:@"face_sel.png"];
    
    return cell;
}

@end
