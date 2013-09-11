//
//  LLLViewController.m
//  enumDemo
//
//  Created by liu on 13-9-11.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "LLLViewController.h"

@interface LLLViewController ()

@end

@implementation LLLViewController

@synthesize table;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    table = [[UITableViewController alloc]initWithStyle:UITableViewStylePlain]; //使用枚举定义表格的整体样式
    
    [self.view addSubview:table.view];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
