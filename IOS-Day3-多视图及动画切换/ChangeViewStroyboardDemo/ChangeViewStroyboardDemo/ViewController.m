//
//  ViewController.m
//  ChangeViewStroyboardDemo
//
//  Created by shangdejigou on 13-10-25.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize first;

- (void)viewDidLoad
{
    [super viewDidLoad];
	//
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeView:(UIButton *)sender {
    first = [[FirstViewController alloc]init];
    NSLog(@"%@",first.view);
    [self.view insertSubview:first.view atIndex:0];
}
@end










