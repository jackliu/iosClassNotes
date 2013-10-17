//
//  SCJDViewController.h
//  TimeToMidnight
//
//  Created by liu on 13-2-23.
//  Copyright (c) 2013年 liu. All rights reserved.
// ViewControl 类，控制界面上的组件变化
// 希望后台的时间输出到 页面，在 Lable 中显示出来

#import <UIKit/UIKit.h>

@interface SCJDViewController : UIViewController

//为 Lable 建立一个代码，用这个代码，代表 界面中的 Label
@property (weak, nonatomic) IBOutlet UILabel *label;



//声明一个函数，得到当前时间与午夜时间 之间的倒计时  小时:分钟:秒
-(void)updateLabel;




@end







