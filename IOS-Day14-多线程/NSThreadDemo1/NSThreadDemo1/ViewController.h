//
//  ViewController.h
//  NSThreadDemo1
//
//  Created by shangdejigou on 13-11-7.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kURL @"http://localhost/ios/babys.jpg"

@interface ViewController : UIViewController

@property(nonatomic,strong)UIImageView *imgView;

//根据指定路径下载图片
-(void)downloadImage:(NSString *)url;

//图片下载完成，更新界面
-(void)updateUI:(UIImage *)img;

@end




