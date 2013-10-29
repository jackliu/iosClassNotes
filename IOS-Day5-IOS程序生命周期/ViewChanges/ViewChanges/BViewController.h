//
//  BViewController.h
//  ViewChanges
//
//  Created by shangdejigou on 13-10-29.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface BViewController : UIViewController

@property(nonatomic,strong)RootViewController *root;

- (IBAction)changeBToA:(UIButton *)sender;


@end
