//
//  TMViewController.m
//  iOSReachabilityTestARC
//
//  Created by Tony Million on 21/11/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "TMViewController.h"

#import "Reachability.h"

@interface TMViewController (private) 

-(void)reachabilityChanged:(NSNotification*)note;

@end

@implementation TMViewController

@synthesize blockLabel, notificationLabel;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle
//监控网络连接的 地方，界面加载检测网络
//也可以在 AppDelegate 中编写，程序启动，检测网络
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //////////////////////////////////////////////////////
    ////// 方法一：使用通知中心监测                    //////
    //////////////////////////////////////////////////////
    //得到消息中心对象，设置观察者为当前类对象
    //当 @selector() 事件发生，发出通知
    //kReachabilityChangedNotification Reachability.h定义的常量名
    //代表网络状况发生改变，发出通知
    /*
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(reachabilityChanged:) 
                                                 name:kReachabilityChangedNotification 
                                               object:nil];
    */
    //////////////////////////////////////////////////////
    ////// 方法二：使用代码块监测                       //////
    //////////////////////////////////////////////////////
    //创建一个测试网络状态对象 
    Reachability * reach = [Reachability reachabilityWithHostname:@"www.taobao.com"];
    //使用代码块和iOS6中的 GCD控制线程
    //测试网络畅通
    reach.reachableBlock = ^(Reachability * reachability)
    {
        //GCD 线程异步操作
        dispatch_async(dispatch_get_main_queue(), ^{
            blockLabel.text = @"Black 你的网络通畅";
        });
    };
    //测试网络不通
    reach.unreachableBlock = ^(Reachability * reachability)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            blockLabel.text = @"Black 你现在无法连接网络";
        });
    };
    
    [reach startNotifier];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

//通知中心，发出通知的操作
-(void)reachabilityChanged:(NSNotification*)note
{
    Reachability * reach = [note object];
    
    if([reach isReachable])
    {
        notificationLabel.text = @"Notification Says Reachable";
    }
    else
    {
        notificationLabel.text = @"Notification Says Unreachable";
    }
}


@end
