//
//  ThreeViewController.m
//  animationDemo
//
//  Created by shangdejigou on 13-11-1.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ThreeViewController.h"

#import <QuartzCore/QuartzCore.h>

@interface ThreeViewController ()

@end

@implementation ThreeViewController

@synthesize box;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Three", @"Three");
        self.tabBarItem.image = [UIImage imageNamed:@"07-map-marker"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //初始化 图片图层
    box = [[UIImageView alloc]initWithFrame:CGRectMake(20, 30, 250, 250)];
    box.image = [UIImage imageNamed:@"png8.png"];
    
    [self.view addSubview:box];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//第一个动画效果
- (IBAction)animation1:(UIButton *)sender {
    //1 创建基本的 Y 轴旋转动画
    CABasicAnimation *anim1 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
    
    //2 修改动画属性，旋转 180 度
    anim1.toValue = [NSNumber numberWithDouble:-M_PI];
    
    // 创建基本的缩放动画
    CABasicAnimation *anim2 = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    anim2.toValue = [NSNumber numberWithDouble:0.9];
    anim2.duration = 1;
    anim2.autoreverses = YES;
    
    //需要新建 连接多个动画的 动画组
    CAAnimationGroup *group = [CAAnimationGroup animation];
    group.animations = @[anim1,anim2];
    //倒计时函数，设置速度参数
    group.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    group.duration = 1;
    group.fillMode = kCAFillModeForwards;  //填充模式
    group.removedOnCompletion = NO;
    
    //3 添加到对应图层中
    [box.layer addAnimation:group forKey:@"flip"];
    
    
    
}

- (IBAction)animation2:(UIButton *)sender {
    //透视 3D 效果
    //1 旋转锚点
    box.layer.anchorPoint = CGPointMake(1, 0.5);
    //2 创建 y 轴旋转动画
    CABasicAnimation *flip = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
    flip.toValue = [NSNumber numberWithDouble:M_PI];
    flip.duration = 1.5;
    
    //3 创建 3D 透视效果   ,CATransform3D 变幻矩阵
    
    CATransform3D tran = CATransform3DIdentity;
    tran.m34 = -1.0f/1000.0f;  //修改矩阵第3行第4列的值
    tran = CATransform3DRotate(tran, 0, 0, 1, 0);
    
    box.layer.transform = tran;
    //4 添加到图层
    [box.layer addAnimation:flip forKey:@"flip"];
    
    
}
@end









