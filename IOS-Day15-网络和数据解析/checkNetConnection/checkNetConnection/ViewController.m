//
//  ViewController.m
//  checkNetConnection
//
//  Created by shangdejigou on 13-11-8.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ViewController.h"

#import "Reachability.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize lbl1;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //////////////////////////////////////////////////////
    // 方法一：使用通知中心                            //////
    //////////////////////////////////////////////////////
    //得到消息中心对象，设置观察者为当前类对象
    //当 @selector() 事件发生，发出通知
    //kReachabilityChangedNotification Reachability.h定义的常量名
    //代表网络状况发生改变，发出通知
    /*
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(reachabilityChanged:)
                                                 name:@"aaa"
                                               object:nil];
    */
    
    /*
    //创建一个测试网络状态对象
    Reachability * reach = [Reachability reachabilityWithHostname:@"www.google.com"];
    //使用代码块和iOS6中的 GCD控制线程
    //测试网络畅通
    reach.reachableBlock = ^(Reachability * reachability)
    {
        //GCD 线程异步操作
        dispatch_async(dispatch_get_main_queue(), ^{
            lbl1.text = @"Black 你的网络通畅";
        });
    };
    //测试网络不通
    reach.unreachableBlock = ^(Reachability * reachability)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            lbl1.text = @"Black 你现在无法连接网络";
        });
    };
     [reach startNotifier];
    */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
//通知中心，发出通知的操作
-(void)reachabilityChanged:(NSNotification*)note
{
    Reachability * reach = [note object];
    
    if([reach isReachable]){
        lbl1.text = @"通知中心 说网络畅通的";
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"网络状况" message:@"网络不通，休息一下..." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
}
*/




@end
