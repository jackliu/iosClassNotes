//
//  ViewController.h
//  DINGDANG
//
//  Created by shangdejigou on 13-5-18.
//  Copyright (c) 2013年 zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyView;
@interface ViewController : UIViewController
@property (strong, nonatomic) MyView *myView;

@property (strong, nonatomic) IBOutlet UISlider *faceSlider;

- (IBAction)changeFace:(UISlider *)sender;

@end
