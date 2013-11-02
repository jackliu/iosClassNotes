//
//  LLLViewController.h
//  ios-05-14-CoreAnimation
//
//  Created by liu on 13-5-14.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LLLViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *myview;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segment1;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segment2;

@property (strong, nonatomic) IBOutlet UIImageView *myimg1;
@property (strong, nonatomic) IBOutlet UIImageView *myimg2;

- (IBAction)buttonPressed:(id)sender;

@end




