//
//  ViewController.h
//  ChangeViewStroyboardDemo
//
//  Created by shangdejigou on 13-10-25.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FirstViewController;

@interface ViewController : UIViewController

@property(nonatomic,retain)FirstViewController *first;

- (IBAction)changeView:(UIButton *)sender;

@end
