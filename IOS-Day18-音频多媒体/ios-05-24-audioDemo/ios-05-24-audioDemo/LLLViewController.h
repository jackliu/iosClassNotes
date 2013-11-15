//
//  LLLViewController.h
//  ios-05-24-audioDemo
//
//  Created by liu on 13-5-24.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface LLLViewController : UIViewController

//通过输出口，修改播放时按钮的文字
@property (strong, nonatomic) IBOutlet UIButton *playButton;

//按下按钮后的操作
- (IBAction)buttonPress:(UIButton *)sender;

//得到音量值  0-1
@property (strong, nonatomic) IBOutlet UISlider *musicVolum;

//滑动调节音量
- (IBAction)changeVolum:(UISlider *)sender;

//显示音乐时间
@property (strong, nonatomic) IBOutlet UILabel *musicTime;
//得到进度值
@property (strong, nonatomic) IBOutlet UISlider *musicSlider;

//拖放进度条，控制进度
- (IBAction)changePress:(UISlider *)sender;
//拖放完毕，手离开进度条，自动播放音乐
- (IBAction)changePressDone:(UISlider *)sender;

@end






