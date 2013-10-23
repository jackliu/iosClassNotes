//
//  ProvinceTableViewController.m
//  ios-05-28-XMLDemo
//
//  Created by liu on 13-5-28.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "ProvinceTableViewController.h"

#import "ProvinceModel.h"

@interface ProvinceTableViewController ()

@end

@implementation ProvinceTableViewController

@synthesize provinceArr,mytable;



- (void)viewDidLoad
{
    [super viewDidLoad];
    //表格视图加载，查询 XML 表格，得到包含所有省份的数组对象
    ProvinceModel *pmodel = [[ProvinceModel alloc]init];
    provinceArr = [pmodel getAllProvinces:[pmodel getXMLDocument]];
    
    NSLog(@"arr count = %i",[provinceArr count]);
    CGRect frame = self.view.bounds;
    mytable = [[UITableView alloc]initWithFrame:frame style:UITableViewStylePlain];
    mytable.dataSource = self;
    
    [self.view addSubview:mytable];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [provinceArr count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //定义一个暗号，从表格中每取一个单元格，都要对暗号
    static NSString *ss = @"hello";
    //1  尝试用这个暗号，去取一个表格
    UITableViewCell *cell = [self.mytable dequeueReusableCellWithIdentifier:ss];
    //2  判断这个单元格是否存在
    if (cell == nil) {
        //创建单元格，给每个单元格指定一个 暗号
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ss];
    }
    //3 往单元格中放入数据
    ProvinceModel *prov = [provinceArr objectAtIndex:indexPath.row];
    
    //NSLog(@"%@",prov.provinceName);
    cell.textLabel.text = prov.provinceName;
    
    return  cell;
}



@end
