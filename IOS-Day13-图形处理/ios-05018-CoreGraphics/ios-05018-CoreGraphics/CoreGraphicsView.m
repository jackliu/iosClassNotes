//
//  CoreGraphicsView.m
//  ios-05018-CoreGraphics
//
//  Created by liu on 13-5-18.
//  Copyright (c) 2013年 liu. All rights reserved.
// 该 UIView 子类，默认会重写父类中的两个方法
// initWithFrame:  根据指定边框创建视图
// drawRect:       根据代码，重绘整个视图内容

#import "CoreGraphicsView.h"

//转换任意 整数值 为 角度值 的宏定义
#define   DEGREES_TO_RADIANS(degrees)  ((M_PI/180) * (degrees))

@implementation CoreGraphicsView


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //初始化时设置视图的属性
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    //重绘的时候，得到 上下文对象
    context = UIGraphicsGetCurrentContext();
    
    //[self textDemo1];
    //[self textDemo2];
    //[self imgDemo1];
    [self contextDemo1];
    //[self contextDemo2];
    //[self contextDemo3];
    //[self contextDemo4];
    
    //[self bezierDemo1];
    [self bezierDemo2];
}

-(void)textDemo1{
    NSString *str = @"HelloHelloHelloHelloHelloHelloHelloHelloHello";
    //1 准备好在哪个点，开始写这个文字
    CGPoint p1 = CGPointMake(0.0f, 0.0f);
    //2 准备好文字的字体、大小
    UIFont *font = [UIFont fontWithName:@"Arial" size:30.0f];
    //得到系统字体
    //UIFont *sysfont= [UIFont boldSystemFontOfSize:30.0f];
    //3 开始在视图中写文字
    [str drawAtPoint:p1 withFont:font];
}

-(void)textDemo2{
    //设置文字颜色
    UIColor *color=[UIColor colorWithRed:100.0f/255.0f green:0.9 blue:0.1 alpha:1];
    [color set];
    
    NSString *str = @"Hello Hello Hello Hello Hello Hello Hello Hello Hello";
    //1 准备好在哪个块(区域)，开始写这个文字
    CGRect rect = CGRectMake(0, 40, 320, 300);
    //2 准备好文字的字体、大小
    UIFont *font = [UIFont fontWithName:@"Arial" size:30.0f];
    //3 开始在视图中写文字
    //[str drawInRect:rect withFont:font];
    //设置文字换行方式
    /*
     NSLineBreakByWordWrapping  默认，按照单词换行
     NSLineBreakByCharWrapping  按照字符换行
     */
    //[str drawInRect:rect withFont:font lineBreakMode:NSLineBreakByWordWrapping];
    //设置文字对齐方式
    [str drawInRect:rect withFont:font lineBreakMode:NSLineBreakByWordWrapping alignment:NSTextAlignmentCenter];
}

-(void)imgDemo1{
    //1 创建图片对象
    UIImage *img = [UIImage imageNamed:@"png5.png"];
    //2 把图片画到当前视图中
    [img drawAtPoint:CGPointMake(20.0f, 20.0f)];
    ////////////////////
    // 创建图片对象
    UIImage *img2 = [UIImage imageNamed:@"png1.png"];
    // 绘制图片
    //可以指定重叠方式：颜色、轮廓、、、、
    [img2 drawAtPoint:CGPointMake(20.0f, 20.0f) blendMode:kCGBlendModeColorBurn alpha:0.7f];
    /////////////////////
    //压缩图片,不确保 图片的高宽比例
    //UIImageView 可以保证图片的高宽比例
    CGRect rect = CGRectMake(20.0f, 380.0f, 20.0f, 20.0f);
    [img2 drawInRect:rect];
}

-(void)contextDemo1{
    CGContextSaveGState(context);
    
    //1、得到一个 上下文对象,在一个 UIView 中只有一个
    //2、用上下文，给文字添加一个阴影效果
    //影子有面积，影子的模糊度
    //Core Graphics 是一套 C 语言 API ，不用对象调用
    CGContextSetShadow(context, CGSizeMake(-15.0f, -15.0f), 3.0f);
    
    [@"Hello" drawAtPoint:CGPointMake(100.0f, 100.0f) withFont:[UIFont boldSystemFontOfSize:50.0f]];
    
    
    CGContextSetShadow(context, CGSizeMake(15.0f,15.0f), 3.0f);
    UIImage *img = [UIImage imageNamed:@"png1.png"];
    [img drawInRect:CGRectMake(80.0f, 200.0f, 200.0f, 200.0f)];
    
    CGContextRestoreGState(context);
}

-(void)contextDemo2{
    //填充一个形状里面的颜色
    CGContextSetRGBFillColor(context, 0.5f, 0.6f, 0.9f, 1.0f);
    
    //设置边框的颜色,Stroke 描边使用
    CGContextSetRGBStrokeColor(context, 0.1f, 0.1f, 0.3f, 1.0f);
    
    //填充一个矩形，默认填充黑色
    CGContextFillRect(context, CGRectMake(10.0f, 10.0f, 100.0f, 100.0f));
    //画一个椭圆Ellipse
    CGContextFillEllipseInRect(context, CGRectMake(50.0f, 50.0f, 200.0f, 150.0f));
}

-(void)contextDemo3{
    //画线，需要指定线条的路径  path  line
    //设置线条的属性
    CGContextSetLineWidth(context, 20.0f); //粗细
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineJoin(context, kCGLineJoinRound);
    
    //设置笔画的颜色
    CGContextSetRGBStrokeColor(context, 0.5f, 0.6f, 0.7f, 1.0f);
    
    //1 设置线条起点
    CGContextMoveToPoint(context, 50.0f, 50.0f);
    //2 设置线条的一个结束点
    CGContextAddLineToPoint(context, 200.0f, 150.0f);
    //再定一个点
    CGContextAddLineToPoint(context, 100.0f, 300.0f);

    //3 封闭笔画路径
    CGContextStrokePath(context);
}

-(void)contextDemo4{
    //画线，需要指定线条 绘制矩形  path  line
    //设置线条的属性
    CGContextSetLineWidth(context, 10.0f); //粗细
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineJoin(context, kCGLineJoinRound);
    
    //设置笔画的颜色
    CGContextSetRGBStrokeColor(context, 0.8f, 0.6f, 0.7f, 1.0f);
    
    //设置填充颜色
    CGContextSetRGBFillColor(context, 0.7f, 0.2f, 0.9f, 1.0f);
    
    //3 使用笔画 绘制矩形
    CGRect rect = CGRectMake(30.0f, 30.0f, 200.0f, 200.0f);
    CGContextStrokeRect(context, rect); //边框
    CGContextFillRect(context, rect);   //填充
}

-(void)bezierDemo1
{
   //使用 贝塞尔 曲线公式画一个矩形
    CGRect rect = CGRectMake(160.0f, 160.f, 100.0f, 150.0f);
    //创建一个 贝塞尔 对象
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:rect];
    
    //闭合路径
    [path closePath];
    //描边
    [path stroke];
    //填充
    //[path fill];
    
    /////////////////////////
    //使用贝塞尔曲线画一个椭圆
    UIBezierPath *path2 = [UIBezierPath bezierPathWithOvalInRect:rect];
    [path2 fill];
    
    ////////////////
    //使用贝塞尔曲线画一个圆
    UIBezierPath *path3 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(160.0f, 160.0f) radius:100.0f startAngle:0 endAngle:DEGREES_TO_RADIANS(190) clockwise:YES];
    [path3 stroke];

    //使用 贝塞尔 画一个直线
    //创建一个空路径
    UIBezierPath *path4 = [UIBezierPath bezierPath];
    //设置起点
    [path4 moveToPoint:CGPointMake(10.0f, 10.0f)];
    //设置另外一个点
    [path4 addLineToPoint:CGPointMake(50.0f, 50.0f)];
    
    CGContextSetRGBStrokeColor(context, 0.2f, 0.5f, 0.8f, 1.0f);
    
    //闭合这两个点
    [path4 closePath];
    //描边
    [path4 stroke];
    
}

-(void)bezierDemo2{
    //把当前的上下文状态保存到   状态栈中
    CGContextSaveGState(context);
    
    //画一个泪滴的形状
    //创建一个空的路径
    UIBezierPath *path = [UIBezierPath bezierPath];
    //设置起点
    [path moveToPoint:CGPointMake(160.0f, 30.0f)];
    [path addLineToPoint:CGPointMake(260.0f, 260.0f)];
    //底部半圆
    [path addArcWithCenter:CGPointMake(160.0f, 260.0f) radius:100.0f startAngle:0 endAngle:M_PI clockwise:YES];
    //闭合路径
    [path closePath];
    //描边
    [path stroke];
    
    //绘制完毕，从状态栈中还原
    CGContextRestoreGState(context);
}


@end















