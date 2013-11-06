//
//  MyView.m
//  DINGDANG
//
//  Created by shangdejigou on 13-5-18.
//  Copyright (c) 2013年 zhang. All rights reserved.
//

#import "MyView.h"

@implementation MyView

@synthesize faceValue;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
//        CGRect fm = CGRectMake(0, 0, 280, 260);
//        NSValue *v = [NSValue valueWithCGRect:fm];        
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    NSLog(@"faceValue = %f",faceValue);
    
    myContext = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(myContext, 1.0f);
    [[UIColor blackColor] set];
    
    //tou
    CGContextSaveGState(myContext);
    CGRect rect1 = CGRectMake(20, 20, 280, 260);
    CGFloat float_head = 0.0f;
    UIBezierPath *path1 = [UIBezierPath bezierPathWithRoundedRect:rect1 cornerRadius:float_head];    
    CGContextSetRGBFillColor(myContext, 0.4, 0.6, .8, 0.8);
    [path1 fill];
    CGContextStrokeRect(myContext, rect1);
    CGContextRestoreGState(myContext);
    //lian
    CGContextSaveGState(myContext);
    CGRect rect2 = CGRectMake(65, 80, 190, 190);
    CGFloat float_face = 0.0f;
    UIBezierPath *path2 = [UIBezierPath bezierPathWithRoundedRect:rect2 cornerRadius:faceValue];  //传递过来的滑块值
    
    CGContextSetRGBFillColor(myContext, 1, 1, 1, 1);
    [path2 fill];
    
    CGContextStrokeRect(myContext, rect2);
    CGContextRestoreGState(myContext);
    
    //yankuang
    CGContextSaveGState(myContext);
    CGRect rect3 = CGRectMake(80, 50, 80, 80);
    CGFloat float3 = 0.0f;
    UIBezierPath *path3 = [UIBezierPath bezierPathWithRoundedRect:rect3 cornerRadius:float3];
    CGRect rect4 = CGRectMake(160, 50, 80, 80);
    CGFloat float4 = 0.0f;
    UIBezierPath *path4 = [UIBezierPath bezierPathWithRoundedRect:rect4 cornerRadius:float4];
    CGContextSetRGBFillColor(myContext, 1.0, 1.0, 1.0, 1);
    [path3 fill];
    [path4 fill];
    CGContextStrokeRect(myContext, rect3);
    CGContextStrokeRect(myContext, rect4);
    CGContextRestoreGState(myContext);
    //bizi
    CGContextSaveGState(myContext);
    CGRect rect5 = CGRectMake(140, 110, 40, 40);
    CGFloat float5 = 0.0f;
    UIBezierPath *path5 = [UIBezierPath bezierPathWithRoundedRect:rect5 cornerRadius:float5];
    CGContextSetRGBFillColor(myContext, 1, 39/255.0, 24/255.0, 1);
    [path5 fill];
    CGContextStrokeRect(myContext, rect5);
    CGContextRestoreGState(myContext);
    //yanjing
    CGContextSaveGState(myContext);
    CGRect rect6 = CGRectMake(130, 85, 20, 20);
    CGFloat float6 = 0.0f;
    UIBezierPath *path6 = [UIBezierPath bezierPathWithRoundedRect:rect6 cornerRadius:float6];
    CGRect rect7 = CGRectMake(170, 85, 20, 20);
    CGFloat float7 = 0.0f;
    UIBezierPath *path7 = [UIBezierPath bezierPathWithRoundedRect:rect7 cornerRadius:float7];
    CGContextSetRGBFillColor(myContext, 0, 0, 0, 1);
    [path6 fill];
    [path7 fill];
    CGContextStrokeRect(myContext, rect6);
    CGContextStrokeRect(myContext, rect7);
    CGContextRestoreGState(myContext);
    
    //zui
    CGContextSaveGState(myContext);
    CGContextMoveToPoint(myContext, 160, 150);
    CGContextAddLineToPoint(myContext, 160, 230);
    CGContextMoveToPoint(myContext, 100, 230);
    CGContextAddLineToPoint(myContext, 220, 230);
    CGContextStrokePath(myContext);
    CGContextRestoreGState(myContext);
    
    //huzi 
    CGContextSaveGState(myContext);
    CGContextMoveToPoint(myContext, 80, 170);
    CGContextAddLineToPoint(myContext, 140, 170);
    CGContextMoveToPoint(myContext, 80, 185);
    CGContextAddLineToPoint(myContext, 140, 185);
    CGContextMoveToPoint(myContext, 80, 200);
    CGContextAddLineToPoint(myContext, 140, 200);
    //
    CGContextMoveToPoint(myContext, 180, 170);
    CGContextAddLineToPoint(myContext, 240, 170);
    CGContextMoveToPoint(myContext, 180, 185);
    CGContextAddLineToPoint(myContext, 240, 185);
    CGContextMoveToPoint(myContext, 180, 200);
    CGContextAddLineToPoint(myContext, 240, 200);
    CGContextStrokePath(myContext);
    CGContextRestoreGState(myContext);
    
}


@end
