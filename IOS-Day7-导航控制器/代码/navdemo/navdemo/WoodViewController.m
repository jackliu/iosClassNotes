//
//  WoodViewController.m
//  navdemo
//
//  Created by liu on 13-4-19.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "WoodViewController.h"

@interface WoodViewController ()

@end

@implementation WoodViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	//代码创建导航栏按钮
    UIButton *navBt = [UIButton buttonWithType:UIButtonTypeCustom];
    [navBt setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"3-oak-wood-back-button" ofType:@"png" ]] forState:UIControlStateNormal];
    navBt.frame = CGRectMake(3, 3, 52, 33);
    //设置按钮上面的文字
    //[navBt setTitle:@"返回" forState:UIControlStateNormal];
    [navBt addTarget:self action:@selector(popButton:) forControlEvents:UIControlEventTouchUpInside];
    
    //代码创建保存导航按钮的 barButtonItem
    UIBarButtonItem *bti = [[UIBarButtonItem alloc]initWithCustomView:navBt];
    self.navigationItem.leftBarButtonItem = bti;
    
    //代码创建导航栏背景图片
     UIImage *topBarImg = [UIImage imageNamed:@"3-oak-wood-menu-bar.png"];
    [self.navigationController.navigationBar setBackgroundImage:topBarImg forBarMetrics:UIBarMetricsDefault];
    
    
}


-(void)popButton:(UIButton *)bt
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
