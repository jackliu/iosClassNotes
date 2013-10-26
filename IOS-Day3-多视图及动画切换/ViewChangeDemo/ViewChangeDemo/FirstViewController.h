//
//  FirstViewController.h
//  ViewChangeDemo
//
//  Created by shangdejigou on 13-10-25.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface FirstViewController : UIViewController

@property(nonatomic,retain)ViewController *root;

- (IBAction)backView:(UIButton *)sender;


@end





