//
//  LLLViewController.m
//  ios-05-14-CoreAnimation
//
//  Created by liu on 13-5-14.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "LLLViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface LLLViewController ()

@end

@implementation LLLViewController

@synthesize myview,myimg2,myimg1,segment2,segment1;

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self.myview addSubview:myimg1];
    [self.myview addSubview:myimg2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    //1 判断用户 动画的方向
    NSString *fangxiang =nil;
    /*
     NSString * const kCATransitionFromRight;
     NSString * const kCATransitionFromLeft;
     NSString * const kCATransitionFromTop;
     NSString * const kCATransitionFromBottom;
     */
     switch (self.segment1.selectedSegmentIndex) {
         case 0:
             fangxiang = kCATransitionFromLeft;
             break;
         case 1:
            fangxiang = kCATransitionFromTop;
             break;
     case 2:
     fangxiang = kCATransitionFromBottom;
     break;
     case 3:
     fangxiang = kCATransitionFromRight;
     break;
     default:
     break;
     }
    
    NSLog(@"fangxiang = %@",fangxiang);
    
    
    //2 判断用户 动画的类型
    NSString *type = nil;
    /*
     NSString * const kCATransitionFade;  淡入淡出
     NSString * const kCATransitionMoveIn;
     NSString * const kCATransitionPush;  推入，推出
     NSString * const kCATransitionReveal;
     */
     switch (self.segment2.selectedSegmentIndex) {
     case 0:
     type = kCATransitionPush;
     break;
     case 1:
     type = kCATransitionMoveIn;
     break;
     case 2:
     type = kCATransitionReveal;
     break;
     case 3:
     type = kCATransitionFade;
     break;
     default:
     break;
     }
    NSLog(@" type = %@ ",type);
    
    //1 开始使用核心动画库，完成动画
    //CATransition 专门做两个图层的转换
    CATransition *myanim = [CATransition animation];
    //2 设置动画的属性
    //[myanim setDuration:5];  //时长
    myanim.type = type;          //界面切换的方式
    myanim.subtype = fangxiang;  //界面切换的方向
    myanim.duration = 2;      //时长
    
    
    //指定哪两个界面进行切换
    
    //得到当前 MyView 中所有子视图
    /*
    NSArray *imgs = [self.view subviews];
    //分别取出两个图片视图的编号
    NSInteger img1 = [imgs indexOfObject:self.myimg1];
    NSInteger img2 = [imgs indexOfObject:self.myimg2];
    NSLog(@"img1 = %d, img2 = %d ",img1,img2);
    [self.myview exchangeSubviewAtIndex:img1 withSubviewAtIndex:img2];
    */
    
    
    [self.myview exchangeSubviewAtIndex:[[self.myview subviews]indexOfObject:self.myimg1] withSubviewAtIndex:[[self.myview subviews]indexOfObject:self.myimg2]];
    
    
    //3 通过图层启动动画, 运行动画
    [self.myview.layer addAnimation:myanim forKey:@"trans"];
}
@end





