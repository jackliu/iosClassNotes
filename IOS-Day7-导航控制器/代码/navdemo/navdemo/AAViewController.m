//
//  AAViewController.m
//  navdemo
//
//  Created by liu on 13-4-19.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "AAViewController.h"

#import "CCViewController.h"

@interface AAViewController ()

@end

@implementation AAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	//
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton *popBt = [[UIButton alloc]initWithFrame:CGRectMake(10, 200, 100, 60)];
    [popBt addTarget:self action:@selector(popButton:) forControlEvents:UIControlEventTouchUpInside];
    [popBt setTitle:@"popBack" forState:UIControlStateNormal];
    popBt.backgroundColor = [UIColor redColor];
    [self.view  addSubview:popBt];
    
    
    UIButton *pushBt = [[UIButton alloc]initWithFrame:CGRectMake(10, 290, 100, 60)];
    [pushBt addTarget:self action:@selector(pushCButton:) forControlEvents:UIControlEventTouchUpInside];
    [pushBt setTitle:@"pushToCC" forState:UIControlStateNormal];
    pushBt.backgroundColor = [UIColor redColor];
    [self.view  addSubview:pushBt];
    
}

//////
-(void)popButton:(UIButton *)bt
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(void)pushCButton:(UIButton *)bt
{
    CCViewController *cbc = [[CCViewController alloc]init];
    [self.navigationController pushViewController:cbc animated:YES];
}


@end
















