//
//  GetValueViewController.h
//  NotificationCenterDemo
//
//  Created by shangdejigou on 13-10-29.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface GetValueViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lbl1;
@property (strong, nonatomic) IBOutlet UILabel *lbl2;
//根视图在启动时已经创建过，这里不能创建  只能获取已有得根视图
@property(strong,nonatomic)RootViewController *root;


- (IBAction)backPress:(UIButton *)sender;

-(void)getValue:(id)sender;
-(void)getRootView:(id)sender;


@end



