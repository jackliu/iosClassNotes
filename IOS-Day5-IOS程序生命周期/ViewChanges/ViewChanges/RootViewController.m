//
//  RootViewController.m
//  ViewChanges
//
//  Created by shangdejigou on 13-10-29.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "RootViewController.h"
#import "AViewController.h"
#import "BViewController.h"
#import "CViewController.h"

@interface RootViewController ()
@end

@implementation RootViewController
@synthesize avc,bvc,cvc,a,b,c;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    //希望第一个看到的界面是 红色的 AViewController
    avc = [[AViewController alloc]initWithNibName:@"AViewController" bundle:nil];
    
    //[self.view insertSubview:avc.view aboveSubview:self.view];
    [self.view insertSubview:avc.view atIndex:0];
    
    //创建三个按钮，调用三个事件
    a = [[UIButton alloc]initWithFrame:CGRectMake(30, 400, 50, 40)];
    [a setTitle:@"A" forState:UIControlStateNormal];
    a.backgroundColor = [UIColor greenColor];
    [a addTarget:self action:@selector(changeToAView:) forControlEvents:UIControlEventTouchUpInside];
    
    b = [[UIButton alloc]initWithFrame:CGRectMake(90, 400, 50, 40)];
    [b setTitle:@"B" forState:UIControlStateNormal];
    b.backgroundColor = [UIColor greenColor];
    [b addTarget:self action:@selector(changeToBView:) forControlEvents:UIControlEventTouchUpInside];
    
    
    c = [[UIButton alloc]initWithFrame:CGRectMake(230, 400, 50, 40)];
    [c setTitle:@"C" forState:UIControlStateNormal];
    c.backgroundColor = [UIColor greenColor];
    [c addTarget:self action:@selector(changeToCView:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view insertSubview:a atIndex:10];
    [self.view insertSubview:b atIndex:10];
    [self.view insertSubview:c atIndex:10];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 切换界面的方法
//统一的切换界面方法
-(void)toggleView:(int) tag
{
    
    switch (tag) {
        case 100:
            //准备显示 第一个窗口
            if (avc == nil) {
                //创建 第一个窗口对象
                avc = [[AViewController alloc]initWithNibName:@"AViewController" bundle:nil];
            }
            
            //从 rootView 中移除另外的窗口
            [self removeAllViews];
            
            //把第一个窗口对象插入到 rootView 中
            [self.view insertSubview:avc.view atIndex:0];
            
            break;
        case 101:
            //准备显示 第二个窗口
            if (bvc == nil) {
                //创建 第一个窗口对象
                bvc = [[BViewController alloc]initWithNibName:@"BViewController" bundle:nil];
            }
            
            //从 rootView 中移除另外的窗口
            [self removeAllViews];
            //把第二个窗口对象插入到 rootView 中
            [self.view insertSubview:bvc.view atIndex:0];
            
            break;
        case 102:
            //准备显示 第三个窗口
            if (cvc == nil) {
                //创建 第一个窗口对象
                cvc = [[CViewController alloc]initWithNibName:@"CViewController" bundle:nil];
            }
            
            //从 rootView 中移除另外的窗口
            [self removeAllViews];
            //把第三个窗口对象插入到 rootView 中
            [self.view insertSubview:cvc.view atIndex:0];
            
            break;
        default:
            break;
    }
}

//删除所有的子视图
-(void)removeAllViews
{
    //循环根视图中所有的子视图
    for (int i=0;i<[self.view.subviews count];i++) {
        UIView *subview =  [self.view.subviews objectAtIndex:i];
        if (![subview isKindOfClass:[UIButton class]]) {
            //如果不按钮类型，从父视图中删除
            [subview removeFromSuperview];
        }
    }
}




- (void)changeToAView:(UIButton *)sender {
    [self toggleView:100];
}

- (void)changeToBView:(UIButton *)sender {
    [self toggleView:101];
}

- (void)changeToCView:(UIButton *)sender {
    [self toggleView:102];
}

@end

