//
//  ViewController.h
//  checkNetConnection
//
//  Created by shangdejigou on 13-11-8.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//提示网络连接状况
@property (strong, nonatomic) IBOutlet UILabel *lbl1;

//处理网络状态发生改变后如何发出通知
-(void)reachabilityChanged:(NSNotification*)note;

@end




