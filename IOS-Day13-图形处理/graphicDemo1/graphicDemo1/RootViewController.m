//
//  RootViewController.m
//  graphicDemo1
//
//  Created by shangdejigou on 13-11-7.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "RootViewController.h"
#import "MyView.h"

@interface RootViewController ()

@end

@implementation RootViewController

@synthesize mview;

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
    //调用自定义的视图
    mview = [[MyView alloc]initWithFrame:CGRectMake(0, 0, 320, 320)];
    
    [self.view addSubview:mview];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
