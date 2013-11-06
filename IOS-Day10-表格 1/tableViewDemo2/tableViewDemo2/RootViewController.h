//
//  RootViewController.h
//  tableViewDemo2
//
//  Created by shangdejigou on 13-11-5.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

//2 实现表格操作的协议
@interface RootViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

//1 代码中可以通过 mytable 变量，访问IB 中的组件
@property (strong, nonatomic) IBOutlet UITableView *mytable;



@end
