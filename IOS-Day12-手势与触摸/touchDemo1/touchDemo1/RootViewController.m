//
//  RootViewController.m
//  touchDemo1
//
//  Created by shangdejigou on 13-11-6.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "RootViewController.h"

#import "MyButton.h"


@interface RootViewController ()

@end

@implementation RootViewController

@synthesize lbl1,lbl2,lbl3,lbl4,lbl5,popBegin,mButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //初始化按钮对象
    mButton = [[MyButton alloc]initWithFrame:CGRectMake(100.0f, 100.0f, 70.0f, 45.0f)];
    mButton.backgroundColor = [UIColor redColor];
    
    //添加到当前界面中
    [self.view addSubview:mButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 重写触摸事件的 方法
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    lbl1.text = @"刚刚接触屏幕";
    [self getTouchsAndTaps:touches];
    
    //得到当前的触摸点
    UITouch *current = [touches anyObject];
    
    //给触摸的起点赋值
    popBegin = [current locationInView:self.view];
    
}



-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    lbl1.text = @"持续接触屏幕";
    [self getTouchsAndTaps:touches];
    
    //检查移动的方向
    UITouch *currentTouch = [touches anyObject];
    //移动后的点
    CGPoint popMoved = [currentTouch locationInView:self.view];
    //计算起点与当前点的间距
    float deltaX = fabsf(self.popBegin.x - popMoved.x);
    float deltaY = fabsf(self.popBegin.y - popMoved.y);
    //判断滑动方向
    //水平方向判断
    if ((deltaX > kMinSwipLength)&&(deltaY < kMaxVariance) ) {
        self.lbl5.text = @"水平移动";
        //延迟调用当前类的方法
        [self performSelector:@selector(clearLabel:) withObject:self.lbl5 afterDelay:1.6f];
    }
    
    //竖直方向的判断
    if ((deltaY > kMinSwipLength)&&(deltaX < kMaxVariance)) {
        self.lbl5.text=@"垂直移动";
        [self performSelector:@selector(clearLabel:) withObject:self.lbl5 afterDelay:1.6f];
    }
    
    
    
}


-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    lbl1.text = @"刚刚离开屏幕";
    [self getTouchsAndTaps:touches];
}


#pragma mark - 通过 touches 参数显示触摸的详细信息
-(void)getTouchsAndTaps:(NSSet *)touches
{
    UITouch *currentTouch = [touches anyObject];
    //得到点击的数目
    NSInteger tapnums = [[touches anyObject]tapCount];
    
    //得到手指的数目
    NSInteger touchnums = [touches count];
    
    //得到手指的坐标点
    CGPoint p1= [currentTouch locationInView:self.view];
    
    lbl2.text = [NSString stringWithFormat:@"%d",touchnums];
    lbl3.text = [NSString stringWithFormat:@"%d , %f 秒",tapnums,currentTouch.timestamp];
    lbl4.text = [NSString stringWithFormat:@"x = %f ,y = %f",p1.x,p1.y];
}

//清空一个 label 中的文字
-(void)clearLabel:(UILabel *)lbl
{
    lbl.text = @"";
}



@end




