//
//  RootViewController.m
//  navWithCode
//
//  Created by shangdejigou on 13-10-31.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "RootViewController.h"

#import "NextViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

@synthesize nav,navBar,navItem,isHidden;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //自定义界面的地方
        //修改当前视图的背景颜色
        //self.view.backgroundColor = [UIColor redColor];
        //RGB 色卡
        self.view.backgroundColor = [UIColor colorWithRed:0.0f green:191.0f blue:255.0f alpha:1.0f];
        
        //方法一：通过导航栏组件设置标题
        /*
        self.navItem = self.navigationItem;
        //通过当前视图控制 对象  self 得到导航栏的 对象
        self.navItem.title = @"标题";
        */
        //方法二：通过当前视图控制器对象设置标题
        //当前视图的标题，默认在导航栏中央显示
        self.title = @"第一个视图";
        
        //获得导航栏控制器
        //self.nav = self.navigationController;
        //给判断变量赋值
        isHidden = self.navigationController.navigationBarHidden;
        NSLog(@"刚启动时，导航栏显示状态为 %d",isHidden);
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
        
    //在导航栏右侧添加按钮
    //自定样式按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:[UIImage imageNamed:@"5-blue-settings-button.png"] forState:UIControlStateNormal];
    //制定按钮的尺寸
    btn.frame = CGRectMake(0, 0, 40, 30);
    //添加按钮点击事件
    [btn addTarget:self action:@selector(pushToNextView:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]initWithCustomView:btn];
    
    //把带图片的按钮，添加到导航栏中
    //得到 barButtonItem
    [self.navigationItem setRightBarButtonItem:barBtn];
    
    //self.navigationController.navigationBar
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 隐藏、显示导航栏
- (IBAction)hiddenButton:(id)sender {
    if (!isHidden) {
        [self.navigationController setNavigationBarHidden:YES animated:YES];
        isHidden = 1;
    }
}

- (IBAction)showButton:(id)sender {
    if (isHidden) {
        [self.navigationController setNavigationBarHidden:NO animated:YES];
        isHidden = 0;
    }
}


-(void)pushToNextView:(id)sender
{
    //进入下一个界面
    NextViewController *next = [[NextViewController alloc]initWithNibName:@"NextViewController" bundle:nil];
    //把下一个界面，推入导航控制器中
    [self.navigationController pushViewController:next animated:YES];
    
}




@end



