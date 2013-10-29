//
//  GetValueViewController.m
//  NotificationCenterDemo
//
//  Created by shangdejigou on 13-10-29.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "GetValueViewController.h"

@interface GetValueViewController ()

@end

@implementation GetValueViewController

//同步属性
@synthesize lbl1,lbl2,root;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //创建视图，立即注册把当前对象  注册到通知中心中
        //把当前视图对象，注册到通知中心中，这样可以取出指定 name 的数据
        //只要有数据，通知中心，自动调用当前类中的 getValue：  方法
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(getValue:)
                                                name:@"clickBtn"
                                                   object:nil];
        //取出 根视图对象
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(getRootView:) name:@"root" object:nil];
    }
    return self;
}
//界面加载完成
- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 从通知中心取值的方法
-(void)getValue:(id)sender
{
    NSLog(@"getValue:");
    //取出 通知中心传递的值
    //把值显示在界面上
    
    //取出消息中数据的两种方式
    //方式一：直接取值
    lbl1.text=[sender object];
    //方式二：通过 userInfo 参数取值
	lbl2.text=[[sender userInfo] objectForKey:@"name"];
    
}

-(void)getRootView:(id)sender
{
    root = [sender object];
}

#pragma mark - 返回跳转
- (IBAction)backPress:(UIButton *)sender {
    //
    //[self presentModalViewController:root animated:YES];
    //取消弹出的视图控制器，返回原来的 视图
    [self dismissViewControllerAnimated:YES completion:^{}];
}


@end



