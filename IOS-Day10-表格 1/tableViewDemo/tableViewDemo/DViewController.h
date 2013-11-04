//
//  DViewController.h
//  tableViewDemo
//
//  Created by liu on 13-4-24.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>


@property(nonatomic,retain)UITableView *table;

//章节的名称
@property(nonatomic,retain)NSArray *keys;
//包含 foods.plist 文件中所有信息的 字典对象
@property(nonatomic,retain)NSDictionary *names;

@end
