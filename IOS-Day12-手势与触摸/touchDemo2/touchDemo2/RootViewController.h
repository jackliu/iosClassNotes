//
//  RootViewController.h
//  touchDemo2
//
//  Created by shangdejigou on 13-11-6.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController
//轻扫方向
@property (strong, nonatomic) IBOutlet UILabel *lbl1;
//手指数目
@property (strong, nonatomic) IBOutlet UILabel *lbl2;
//点击次数
@property (strong, nonatomic) IBOutlet UILabel *lbl3;

//手势对象
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipe;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tap;





@end








