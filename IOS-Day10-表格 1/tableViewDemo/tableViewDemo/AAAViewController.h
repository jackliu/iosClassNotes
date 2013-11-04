//
//  AAAViewController.h
//  tableViewDemo
//
//  Created by liu on 13-4-20.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <UIKit/UIKit.h>

//继承 UITableViewController 父类后，不用声明就可以直接实现协议
@interface AAAViewController : UIViewController

@property(nonatomic,retain) NSArray *timeZones;

@property(nonatomic,retain)UITableView *table;

@end
