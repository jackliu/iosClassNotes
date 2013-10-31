//
//  AAViewController.m
//  ios-0420
//
//  Created by liu on 13-4-20.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "AAViewController.h"

@interface AAViewController ()

@end

@implementation AAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	//1 创建一个普通按钮，返回根视图
    UIButton *bt1 = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 60)];
    bt1.backgroundColor = [UIColor redColor];
    //设置按钮，正常状态下，显示的文字
    [bt1 setTitle:@"ToViewRoot" forState:UIControlStateNormal];
    [bt1 addTarget:self action:@selector(popView:) forControlEvents:UIControlEventTouchUpInside];
    //把按钮添加到当前视图中
    [self.view addSubview:bt1];
    
    
    //////////////////////////////////////////////
    //1 隐藏自动生成的 Back  按钮
    [self.navigationItem setHidesBackButton:YES];
    //2 创建自定义样式的按钮
    UIButton *mybt1 = [UIButton buttonWithType:UIButtonTypeCustom];
    //制定按钮的尺寸
    mybt1.frame = CGRectMake(0, 0, 40, 30);
    //创建一个按钮图片
    UIImage *btimg = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"btn_back_tapped" ofType:@"png"]];
    
    //设置按钮两种状态下的图片
    [mybt1 setImage:btimg forState:UIControlStateNormal];
    [mybt1 setImage:[UIImage imageNamed:@"btn_back_tapped.png"] forState:UIControlStateHighlighted];
    
    //设置按钮的事件处理
    [mybt1 addTarget:self action:@selector(popView:) forControlEvents:UIControlEventTouchUpInside];
    
    //创建一个能够放入  导航栏的 UIBarButtonItem
    UIBarButtonItem *bbt = [[UIBarButtonItem alloc]initWithCustomView:mybt1];
    
    //把按钮添加都当前导航控制器的 navigationItem 中,
    //navigationItem 中只允许放入 UIBarButtonItem
    self.navigationItem.leftBarButtonItem = bbt;
    
    //为导航栏，设置好看的背景
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"bg_nav.png"] forBarMetrics:UIBarMetricsDefault];
    
    
    
}

#pragma mark -
#pragma mark 按钮事件处理
-(void)popView:(UIButton *)button
{
    //把当前的视图界面，从导航栈中弹出
    [self.navigationController popViewControllerAnimated:YES];
}




@end








