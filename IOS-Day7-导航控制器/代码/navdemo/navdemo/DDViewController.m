//
//  DDViewController.m
//  navdemo
//
//  Created by liu on 13-4-19.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "DDViewController.h"

@interface DDViewController ()

@end

@implementation DDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	//创建类似豆瓣相册的导航
    //设置导航背景图片
    UIImage *topBarImg = [UIImage imageNamed:@"bg_nav.png"];
    [self.navigationController.navigationBar setBackgroundImage:topBarImg forBarMetrics:UIBarMetricsDefault];

    //创建左侧按钮
    [self setBackLeftBarButtonItem];
    
    //创建右侧按钮
    [self setBarButtonItems];

}


- (void)setBackLeftBarButtonItem{
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(0, 0, 44, 44);
    
    [backBtn setImage:[UIImage imageNamed:@"btn_back.png"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:@"btn_back_tapped.png"] forState:UIControlStateHighlighted];
    
    [backBtn addTarget:self action:@selector(doBack:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    self.navigationItem.leftBarButtonItem = backItem;
}

- (void)setBarButtonItems{
        //创建右侧的导航按钮
        UIImage *backImg1 = [UIImage imageNamed:@"btn_peo.png"];
        UIImage *backImgTapped1 = [UIImage imageNamed:@"btn_peo_tapped.png"];
        
        UIButton *profileBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        profileBtn.frame = CGRectMake(0, 0, 44, 44);
        [profileBtn addTarget:self action:@selector(doRight:) forControlEvents:UIControlEventTouchUpInside];
        
        [profileBtn setImage:backImg1 forState:UIControlStateNormal];
        [profileBtn setImage:backImgTapped1 forState:UIControlStateHighlighted];
        
        UIBarButtonItem *profileItem = [[UIBarButtonItem alloc] initWithCustomView:profileBtn];
    
        self.navigationItem.rightBarButtonItem = profileItem;
    
    
    //////////////////////////////////////
    //创建两个 小按钮，放在导航栏中间标题栏上面 
    CGFloat width =206;
    CGFloat height = 44;
    UIView *titleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width, UIInterfaceOrientationIsPortrait(self.interfaceOrientation)?44:32)];//206 is max width //258
    titleView.backgroundColor = [UIColor clearColor];
   
    //右侧第一个按钮
    UIButton *collectBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    collectBtn.frame = CGRectMake(width-99, 0, 44, height);
    collectBtn.tag = 1;
    
    [collectBtn addTarget:self action:@selector(doLove:) forControlEvents:UIControlEventTouchUpInside];
    
    //创建正常状态下的图片
    [collectBtn setImage:[UIImage imageNamed:@"btn_loved.png"] forState:UIControlStateNormal];
    //创建选中，高亮时的图片
    [collectBtn setImage:[UIImage imageNamed:@"btn_loved_tapped.png"] forState:UIControlStateHighlighted];
    
    [titleView addSubview:collectBtn];
    
    //创建右侧的第二张图片
    UIButton *shareBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    shareBtn.tag = 2;
    shareBtn.frame = CGRectMake(width-44, 0, 44, height);
    [shareBtn addTarget:self action:@selector(doShare:) forControlEvents:UIControlEventTouchUpInside];
    
    [shareBtn setImage:[UIImage imageNamed:@"btn_share.png"] forState:UIControlStateNormal];
    [shareBtn setImage:[UIImage imageNamed:@"btn_share_tapped.png"] forState:UIControlStateHighlighted];
    
    [titleView addSubview:shareBtn];
    
    self.navigationItem.titleView = titleView;
}


#pragma mark -
#pragma mark  导航按钮事件处理
-(void)doBack:(UIButton *)bt
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)doLove:(UIButton *)bt
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Message" message:@"爱爱爱爱!!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}

-(void)doRight:(UIButton *)bt
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Message" message:@"你好!!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}

-(void)doShare:(UIButton *)bt
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Message" message:@"欢迎分享!!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}

@end















