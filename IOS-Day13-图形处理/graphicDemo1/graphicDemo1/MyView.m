//
//  MyView.m
//  graphicDemo1
//
//  Created by shangdejigou on 13-11-7.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //设置自定义视图的尺寸
        self.backgroundColor = [UIColor greenColor];
    }
    return self;
}


// Only override drawRect: 如果你需要自定义界面时，重写本方法.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    //[self demo1];  //重绘文字
    //[self demo2];  //重绘图片
    //[self demo3];    //使用上下文打印文字
    //[self demo4];  //绘制阴影，两种效果会叠加
    //上下文栈
    //[self demo5];
    [self demo6];
    
}


-(void)demo1
{
    /////////////////////////////////////////////////
    //定义想实现的效果
    /////////////////////////////////////////////////
    CGPoint point = CGPointMake(10.0f, 10.0f);
    CGPoint point2 = CGPointMake(10.0f, 35.0f);
    
    UIColor *textColor = [[UIColor alloc]initWithRed:0.1 green:0.4 blue:0.3 alpha:0.9];
    [textColor set];
    
    //自己制定字符库，字体大小
    UIFont *myfont = [UIFont fontWithName:@"Avenir-Black" size:26.0f];
    UIFont *sysfont= [UIFont systemFontOfSize:30.0f];
    //[UIFont boldSystemFontOfSize:30.0f];
    
    
    /////////////////////////////////////////////////
    //按照效果绘制内容，内容可以变
    /////////////////////////////////////////////////
    NSString *ss = @"HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello";
    
    //在这个界面中绘制字符串
    [ss drawAtPoint:point withFont:myfont];
    [ss drawAtPoint:point2 forWidth:300.0f withFont:sysfont lineBreakMode:NSLineBreakByTruncatingMiddle];
}

-(void)demo2
{
    /////////////////////////////////////////////////
    //定义想实现的效果
    /////////////////////////////////////////////////
    UIImage *img1 = [UIImage imageNamed:@"png7.png"];
    UIImage *img2 = [UIImage imageNamed:@"png10.png"];
    
    /////////////////////////////////////////////////
    //按照效果绘制内容，内容可以变
    /////////////////////////////////////////////////
    [img1 drawAtPoint:CGPointMake(20, 20)];
    
    //blendMode  可以指定重叠方式：颜色、轮廓、、、、
    [img2 drawInRect:CGRectMake(20, 20, 250, 250) blendMode:kCGBlendModeColorBurn alpha:.5f];
    
    //添加动画
    
}

-(void)demo3
{
    //得到当前 MyView 中唯一的一个上下文对象
    CGContextRef myContext = UIGraphicsGetCurrentContext();
    //所有的效果设置，都是通过 context 对象完成
    // ********** 你绘制图像的代码 **********
    //2 设置填充颜色
    CGContextSetRGBFillColor (myContext, 1, 0, 0, 1);
    //3 设置填充形状
    CGContextFillRect (myContext, CGRectMake (0, 0, 200, 100 ));
    
    
    //没有对象，不适合做动画
    /*
    [UIView animateWithDuration:2 animations:^(void){
        //4 设置另一个填充颜色
        CGContextSetRGBFillColor (myContext, 0, 0, 1, .5);
        //5 设置另一个填充形状
        CGContextFillRect (myContext, CGRectMake (0, 0, 100, 200));
    } completion:^(BOOL fini){
        
    }];
    */
}

-(void)demo4
{
    //得到当前视图中的上下文对象
    CGContextRef myContext = UIGraphicsGetCurrentContext();
    
    //2 坐标点、字体
    CGPoint first = CGPointMake(10, 30);
    UIFont *myfont3 = [UIFont boldSystemFontOfSize:30.0f];
    
    //3 设置阴影偏移位置、模糊程度 2
    CGContextSetShadow(myContext, CGSizeMake(5,5), 2);
    
    [@"hello,CoreGraphics " drawAtPoint:first withFont:myfont3];
    
    //图片添加阴影
    //属性设置
    UIImage *img1 = [UIImage imageNamed:@"png7.png"];
    //重绘前，再次设定 阴影效果
    CGContextSetShadow(myContext, CGSizeMake(5,5), 2);
    
    //CGContextSetShadowWithColor(myContext, CGSizeMake(15,10), 2, CGColor);
    //draw 重绘
    [img1 drawAtPoint:CGPointMake(20, 20)];
    
}

-(void)demo5
{
    //得到上下文
    CGContextRef myContext = UIGraphicsGetCurrentContext;
    
    //绘制一个带圆角的矩形
    CGRect rect = CGRectMake(60,80,200,200);
    //使用工具绘制矩形，设定矩形圆角半径
    UIBezierPath *rr = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:30];
    //设置阴影
    CGContextSetShadow(myContext, CGSizeMake(0, 5), 10);
    
    //往矩形中填充内容
    [rr fill];
    
    ////////////////////////////////
    //开始绘制前，把当前状态保存到状态栈中
    //CGContextSaveGState(myContext);
    
    //这里的任何效果，不会与外部效果冲突
    //用圆角路径对上下文进行剪切
    [rr addClip];
    //在裁切好的区域内绘制渐变颜色
    //CGContextDrawLinearGradient(myContext, nil, CGPointMake(20, 20), CGPointMake(40, 40), 0);
    
    //绘制完成，把上下文状态从栈中弹出
    //CGContextRestoreGState(myContext);
    ////////////////////////////////
    
    //绘制一段文字
    CGContextSetRGBFillColor(myContext, 200, 150, 0, 1);
    [@"hello hello hello hello hello hello" drawInRect:CGRectMake(10.0f, 85.0f,200.0f,100.0f) withFont:[UIFont systemFontOfSize:30.0f]];
    
}


- (void)demo6
{
    // draw a rounded rect bezier path filled with blue
    CGContextRef aRef = UIGraphicsGetCurrentContext();
    
    //把当前的上下文状态保存到   状态栈中
    CGContextSaveGState(aRef);
    
    //你自己的绘图代码
    CGRect rect = CGRectMake(60,80,200,200);
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:5.0f];
    [bezierPath setLineWidth:5.0f];
    [[UIColor blackColor] setStroke];
    
    UIColor *fillColor = [UIColor colorWithRed:0.529 green:0.808 blue:0.922 alpha:1]; // color equivalent is #87ceeb
    [fillColor setFill];
    
    
    [bezierPath stroke];  //描边
    [bezierPath fill];    //填充
    
    //绘制完毕，从状态栈中还原
    CGContextRestoreGState(aRef);
    
   
    
    
    //////////////////////////
    //2 坐标点、字体
    CGPoint first = CGPointMake(10, 90);
    UIFont *myfont3 = [UIFont boldSystemFontOfSize:30.0f];
    
    //3 设置阴影偏移位置、模糊程度 2
    CGContextSetShadow(aRef, CGSizeMake(5,5), 2);
    
    [@"hello,CoreGraphics " drawAtPoint:first withFont:myfont3];
    /////////////////////////////
}



@end








