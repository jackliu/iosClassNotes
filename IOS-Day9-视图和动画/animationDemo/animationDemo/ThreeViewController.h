//
//  ThreeViewController.h
//  animationDemo
//
//  Created by shangdejigou on 13-11-1.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThreeViewController : UIViewController

//被动画控制的 图层
@property(nonatomic,strong)UIImageView *box;

- (IBAction)animation1:(UIButton *)sender;

- (IBAction)animation2:(UIButton *)sender;


@end





