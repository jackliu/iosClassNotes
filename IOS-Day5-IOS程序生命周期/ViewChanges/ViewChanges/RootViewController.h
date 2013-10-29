//
//  RootViewController.h
//  ViewChanges
//
//  Created by shangdejigou on 13-10-29.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AViewController,BViewController,CViewController;

//根视图控制三个界面的切换，需要拥有他们的对象
@interface RootViewController : UIViewController

@property(nonatomic,strong)AViewController *avc;
@property(nonatomic,strong)BViewController *bvc;
@property(nonatomic,strong)CViewController *cvc;

@property(nonatomic,strong)UIButton *a;
@property(nonatomic,strong)UIButton *b;
@property(nonatomic,strong)UIButton *c;

- (void)changeToAView:(UIButton *)sender;
- (void)changeToBView:(UIButton *)sender;
- (void)changeToCView:(UIButton *)sender;




//统一的切换界面方法
-(void)toggleView:(int) tag;

//删除所有的子视图
-(void)removeAllViews;


@end





