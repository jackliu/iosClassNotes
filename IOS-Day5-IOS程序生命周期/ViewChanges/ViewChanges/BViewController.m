//
//  BViewController.m
//  ViewChanges
//
//  Created by shangdejigou on 13-10-29.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "BViewController.h"
#import "AppDelegate.h"
#import "RootViewController.h"

@interface BViewController ()

@end

@implementation BViewController

@synthesize root;

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeBToA:(UIButton *)sender {
    //如果得到 root 调用 changeToAView:
    //root 是在程序启动 AppDelegate 类中创建的，得到 Delegate 就可以得到 root
    AppDelegate *delegate =(AppDelegate *)[[UIApplication sharedApplication]delegate];
   self.root = [delegate root];
   //通过 root 中的方法进行切换
    [root changeToAView:nil];
    
}


@end





