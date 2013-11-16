//
//  ViewController.m
//  LocationDemo
//
//  Created by shangdejigou on 13-11-15.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ViewController.h"

#import "AAAViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)toAAA:(id)sender {
    AAAViewController *aa = [[AAAViewController alloc]init];
    
    [self.navigationController pushViewController:aa animated:YES];
}
@end
