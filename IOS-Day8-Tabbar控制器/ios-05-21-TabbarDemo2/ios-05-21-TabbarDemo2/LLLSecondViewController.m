//
//  LLLSecondViewController.m
//  ios-05-21-TabbarDemo2
//
//  Created by liu on 13-5-21.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "LLLSecondViewController.h"

@interface LLLSecondViewController ()

@end

@implementation LLLSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
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

@end
