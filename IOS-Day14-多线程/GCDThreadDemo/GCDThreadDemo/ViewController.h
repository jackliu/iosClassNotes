//
//  ViewController.h
//  GCDThreadDemo
//
//  Created by shangdejigou on 13-11-8.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kURL @"http://localhost/ios/babys.jpg"

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imgView;
@property (strong, nonatomic) IBOutlet UIButton *btn;
//菊花
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *spinner;



- (IBAction)buttonPress:(UIButton *)sender;


//根据指定路径下载图片
-(void)downloadImage:(NSString *)url;

//每个方法都是一个子线程
-(NSString *)fecthSomethingFormServer;

-(NSString *)processData:(NSString *)data;

@end
