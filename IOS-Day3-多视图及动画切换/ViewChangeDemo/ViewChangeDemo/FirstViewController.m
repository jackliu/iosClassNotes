//
//  FirstViewController.m
//  ViewChangeDemo
//
//  Created by shangdejigou on 13-10-25.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "FirstViewController.h"

#import "ViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

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

- (IBAction)backView:(UIButton *)sender {
    //目前有 两个 root 对象
    root =  [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    
    [self.view insertSubview:root.view aboveSubview:self.view];
    
}
@end







