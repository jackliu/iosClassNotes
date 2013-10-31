//
//  LLLFirstViewController.m
//  ios-05-21-TabbarDemo2
//
//  Created by liu on 13-5-21.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "LLLFirstViewController.h"

@interface LLLFirstViewController ()

@end

@implementation LLLFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //self.title = NSLocalizedString(@"爱好", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
        self.tabBarItem.title = @"爱好";
        self.tabBarItem.badgeValue = @"2";
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
