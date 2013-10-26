//
//  ViewController.m
//  ViewChangeDemo
//
//  Created by shangdejigou on 13-10-25.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ViewController.h"
//m 文件中，需要创建导入类的对象，并调用方法，必须使用import
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize first,second,third;

#pragma mark - 视图的生命周期
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 切换界面的按钮
- (IBAction)toFiestView:(UIButton *)sender {
    [self toggleView:1];
}

- (IBAction)toSecondView:(id)sender {
    [self toggleView:2];
}

- (IBAction)toThirdView:(UIButton *)sender {
    [self toggleView:3];
}


//统一的切换界面方法
-(void)toggleView:(int)tag
{
    switch (tag) {
        case 1:
            //准备显示 第一个窗口
            if (first == nil) {
                //创建 第一个窗口对象
                first = [[FirstViewController alloc]init];
                //从 rootView 中移除另外的窗口
                [self.second.view removeFromSuperview];
                [self.third.view removeFromSuperview];
                //把第一个窗口对象插入到 rootView 中
                [self.view insertSubview:first.view aboveSubview:self.view];
            }
            
            break;
        case 2:
            //准备显示 第二个窗口
            //准备显示 第一个窗口
            if (second == nil) {
                //创建 第一个窗口对象
                second = [[SecondViewController alloc]init];
                //从 rootView 中移除另外的窗口
                [self.first.view removeFromSuperview];
                [self.third.view removeFromSuperview];
                //把第一个窗口对象插入到 rootView 中
                [self.view insertSubview:second.view aboveSubview:self.view];
            }
            break;
        case 3:
            //准备显示 第三个窗口
            //准备显示 第一个窗口
            if (third == nil) {
                //创建 第一个窗口对象
                third = [[ThirdViewController alloc]init];
                //从 rootView 中移除另外的窗口
                [self.second.view removeFromSuperview];
                [self.first.view removeFromSuperview];
                //把第一个窗口对象插入到 rootView 中
                [self.view insertSubview:third.view aboveSubview:self.view];
            }
            break;
        default:
            break;
    }
}




@end








