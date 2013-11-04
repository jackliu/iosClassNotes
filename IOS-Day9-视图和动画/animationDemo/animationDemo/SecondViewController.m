//
//  SecondViewController.m
//  animationDemo
//
//  Created by shangdejigou on 13-11-1.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "SecondViewController.h"
//导入动画库
#import <QuartzCore/QuartzCore.h>


@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize imgView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Block", @"Block");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //新建一个 图层
    UIImage *img= [UIImage imageNamed:@"png8.png"];
    imgView = [[UIImageView alloc]initWithImage:img];
    
    [self.view addSubview:imgView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)animation1:(UIButton *)sender {
    //视图加载完成，启动动画
    //1 创建一个 CoreAnimation 对象
    CABasicAnimation *basic = [CABasicAnimation animation];
    
    //2 设置 动画对象的属性，26个 CALayer 的属性都可以做动画
    basic.duration = 2;
    //basic.toValue = (id)[UIColor greenColor].CGColor;
    basic.toValue = (id)[NSNumber numberWithDouble:200.0f];
    basic.autoreverses = YES;
    
    //3 把动画对象，添加到图层中,forKey 填入 CALayer 的某个属性
    //[self.view.layer addAnimation:basic forKey:@"backgroundColor"];
    [self.view.layer addAnimation:basic forKey:@"bounds.size.width"];
}

- (IBAction)animation2:(UIButton *)sender {
    //设置关键帧
    //1 创建一个 CoreAnimation 对象
    CAKeyframeAnimation *keyframe = [CAKeyframeAnimation animation];
    
    //2 设置 动画对象的属性，26个 CALayer 的属性都可以做动画
    keyframe.values = @[(id)self.view.layer.backgroundColor,(id)[UIColor greenColor].CGColor,(id)[UIColor redColor].CGColor,(id)[UIColor blueColor].CGColor];
    
    keyframe.duration = 3;
    keyframe.autoreverses = YES;
    
    
    //3 把动画对象，添加到图层中,forKey 填入 CALayer 的某个属性
    [self.view.layer addAnimation:keyframe forKey:@"backgroundColor"];
    
}

- (IBAction)animation3:(UIButton *)sender {
    //通过关键路径控制动画
    
    //1
    CAKeyframeAnimation *keyframe = [CAKeyframeAnimation animation];

    //2 设置 运行的路径对象
    CGMutablePathRef aPath = CGPathCreateMutable(); //空的路径
    CGPathMoveToPoint(aPath, nil, 20, 20);     //起点
    CGPathAddCurveToPoint(aPath, nil, 160, 30, //第一个控制点
                          220, 220,            //第二个控制点
                          240, 380);           //终点
    //把曲线对象，添加到动画对象中
    keyframe.path = aPath;
    keyframe.duration=3;
    //速度曲线，计时函数，控制动画速度，先慢后快
    keyframe.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    //沿着路径运行时，沿着切线方向旋转
    keyframe.rotationMode = @"auto";
    
    //3
    [imgView.layer addAnimation:keyframe forKey:@"position"];
    
    //删除路径对象
    CFRelease(aPath);
}



@end




