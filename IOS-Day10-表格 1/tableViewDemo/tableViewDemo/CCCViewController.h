//
//  CCCViewController.h
//  tableViewDemo
//
//  Created by liu on 13-4-23.
//  Copyright (c) 2013年 liu. All rights reserved.
//  创建一个 每行带一个小图片的 表格
//  选择不同的行，图片会自动切换
//  实现 表格代理，完成选中某行数据弹出所选行内容

#import <UIKit/UIKit.h>

@interface CCCViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>


//定义表格对象
@property(nonatomic,retain)UITableView *table;
//要在表格中显示的数据
@property(nonatomic,retain)NSArray *datas;
//要在每行前面显示的图片
@property(nonatomic,retain)NSArray *images;
//要在每行中显示的明细信息
@property(nonatomic,retain)NSArray *details;

@end




