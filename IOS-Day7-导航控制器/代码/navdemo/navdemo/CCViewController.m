//
//  CCViewController.m
//  navdemo
//
//  Created by liu on 13-4-19.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "CCViewController.h"

#import "WoodViewController.h"
#import "DDViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
	//自定义导航栏
    UIButton *customBar = [UIButton buttonWithType:UIButtonTypeCustom];
    //制定自定义组件中绑定的图片
    [customBar setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"btnNavBack" ofType:@"png"]] forState:UIControlStateNormal];
    //制定自定义组件的尺寸
    customBar.frame = CGRectMake(3, 3, 49, 31);
    //设置按钮点击后的事件处理
    [customBar addTarget:self action:@selector(backButton:) forControlEvents:UIControlEventTouchUpInside];
    //创建保存自定义按钮的容器 Bar
    UIBarButtonItem *back = [[UIBarButtonItem alloc]initWithCustomView:customBar];
    //将新建的 BarItem 放入当前视图顶部导航栏中
    self.navigationItem.leftBarButtonItem = back;
    
    //设置导航栏背景色
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:(90.0/255.0) green:(182.0/255.0) blue:(45.0/255.0) alpha:1];
    
    
    
    //进一步新建一个书架
    UIButton *wood = [UIButton buttonWithType:UIButtonTypeCustom];
    //采用带图片的按钮
    [wood setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"3-oak-wood-button" ofType:@"png"]] forState:UIControlStateNormal];
    wood.frame = CGRectMake(100, 30, 55, 32);
    //事件处理
    [wood addTarget:self action:@selector(pushToWood:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:wood];
    
    
    
    //创建一个左右都带导航按钮
    UIButton *pushBt = [[UIButton alloc]initWithFrame:CGRectMake(100, 90, 100, 60)];
    [pushBt addTarget:self action:@selector(pushToDD:) forControlEvents:UIControlEventTouchUpInside];
    [pushBt setTitle:@"DDView" forState:UIControlStateNormal];
    pushBt.backgroundColor = [UIColor redColor];
    [self.view addSubview:pushBt];
    
}


//////
-(void)backButton:(UIButton *)bt
{
    //直接弹出当前视图就可以了
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)pushToWood:(UIButton *)bt
{
    WoodViewController *wood = [[WoodViewController alloc]init];
    [self.navigationController pushViewController:wood animated:YES];
}


-(void)pushToDD:(UIButton *)bt
{
    DDViewController *dvc = [[DDViewController alloc]init];
    [self.navigationController pushViewController:dvc animated:YES];
}


@end













