//
//  RootViewController.m
//  ios-0420
//
//  Created by liu on 13-4-20.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "RootViewController.h"

#import "ButtonPressController.h"

#import "AAViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    /////////////////////////////////////////
	//使用 RGB 三原色设置背景颜色
    self.view.backgroundColor = [UIColor colorWithRed:(80.0/255.0) green:(160.0/255.0) blue:(200.0/255.0) alpha:1];
    
    /////////////////////////////////////////
    /*
    //查看当前视图控制器中，与导航有关的属性
    //任何一个 ViewController 中，都包含一个导航控制器和一个 导航的 Item
    self.navigationController
    self.navigationItem

    self.navigationController.navigationBar
    //self.navigationController.navigationController;
    //self.navigationController.navigationItem;
    */
    
    /////////////////////////////////////////
    //显示当前 ViewController 中默认包含的导航栏
    //属性，判断导航栏是否隐藏，不能控制导航栏隐藏
    //self.navigationController.navigationBarHidden =NO;
    //方法，操作导航栏隐藏或显示
    [self.navigationController setNavigationBarHidden:NO];
    //判断当前视图是否隐藏导航栏
    if (self.navigationController.navigationBarHidden) {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"提示" message:@"当前导航栏隐藏" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }else
    {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"提示" message:@"当前导航栏显示" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];

    }
    
    /////////////////////////////////////////
    //在当前视图中创建一个普通按钮，导航到下一个页面
    UIButton *bt1 = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 60)];
    bt1.backgroundColor = [UIColor redColor];
    //设置按钮，正常状态下，显示的文字
    [bt1 setTitle:@"ToViewA" forState:UIControlStateNormal];
    //指定点击 按钮后，的事件处理
    //代理的实现方法，最好在当前控制器中编写
    //ButtonPressController  *btPress = [[ButtonPressController alloc]init];
    [bt1 addTarget:self action:@selector(pushView:) forControlEvents:UIControlEventTouchUpInside];
    //把按钮添加到当前视图中
    [self.view addSubview:bt1];
    
    
    /////////////////////////////////////////
    //在导航栏右侧 创建一个按钮，实现上面按钮相同的功能
    //创建导航栏专用按钮  UIBarButtonItem
    UIBarButtonItem *barBt = [[UIBarButtonItem alloc]initWithTitle:@"前进" style:UIBarButtonSystemItemDone target:self action:@selector(pushView:)];
    //得到当前视图中，导航控制器
    self.navigationItem.rightBarButtonItem = barBt;
    
}


#pragma mark -
#pragma mark 按钮的事件 处理

-(void)pushView:(UIButton *)button
{
    //做导航,创建一个新的视图对象，压入导航栈。用户会看到新压入的视图
    AAViewController *avc = [[AAViewController alloc]init];
    [self.navigationController pushViewController:avc animated:YES];
}







@end
