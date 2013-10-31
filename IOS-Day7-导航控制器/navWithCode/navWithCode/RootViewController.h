//
//  RootViewController.h
//  navWithCode
//
//  Created by shangdejigou on 13-10-31.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController

//在当前视图中修改导航栏，添加导航控制器做属性
@property(nonatomic,strong)UINavigationController *nav;
@property(nonatomic,strong)UINavigationBar *navBar;
@property(nonatomic,strong)UINavigationItem *navItem;

//判断是否隐藏
@property(nonatomic,assign)BOOL isHidden;

//点击隐藏导航栏
- (IBAction)hiddenButton:(id)sender;
//点击显示导航栏
- (IBAction)showButton:(id)sender;



@end






