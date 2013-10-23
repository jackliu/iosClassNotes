//
//  ProvinceTableViewController.h
//  ios-05-28-XMLDemo
//
//  Created by liu on 13-5-28.
//  Copyright (c) 2013年 liu. All rights reserved.
//  该表格视图，显示所有的省份列表

#import <UIKit/UIKit.h>

@interface ProvinceTableViewController : UIViewController<UITableViewDataSource>

//表格中要显示的所有省份数据
@property(nonatomic,strong)NSMutableArray *provinceArr;
@property(nonatomic,strong)UITableView *mytable;

@end
