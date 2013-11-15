//
//  LLLViewController.m
//  ios-05-24-audioDemo
//
//  Created by liu on 13-5-24.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "LLLViewController.h"
//导入系统声音类
#import <AudioToolbox/AudioToolbox.h>
//导入普通声音类
#import <AVFoundation/AVFoundation.h>

//匿名类别，扩展类的属性和方法
//控制播放器停止时的操作，自动完成
@interface LLLViewController ()<AVAudioPlayerDelegate>

/* -------系统音效--------- */
//1、开始播放的音效ID button-1.mp3
@property(nonatomic,assign)SystemSoundID beginID;
//暂停播放的音效 button-3.mp3
@property(nonatomic,assign)SystemSoundID stopID;

/* -------播放器对象--------- */
//声明一个 AVAudioPlayer 播放器
@property(nonatomic,strong)AVAudioPlayer *player;

/*---------使用计时器刷新页面------------ */
@property(nonatomic,strong)NSTimer *timer;
//按照计时，刷新界面
-(void)onTimer;

@end

@implementation LLLViewController

@synthesize beginID,stopID,player,playButton,musicVolum,musicSlider;

#pragma mark - 当前视图的生命周期
- (void)viewDidLoad
{
    [super viewDidLoad];
	/*  ------视图加载时，创建播放器-------  */
    //1 得到 音乐的名字,一个播放器，只放一首音乐
    NSString *musicName = [[NSBundle mainBundle]pathForResource:@"music3" ofType:@"mp3"];
    if (musicName) {
        //2 根据名字得到路径
        NSURL *musicURL = [NSURL fileURLWithPath:musicName];
        //3 根据路径得到播放器对象
        self.player = [[AVAudioPlayer alloc]initWithContentsOfURL:musicURL error:nil];
        //创建完毕，指定代理对象
        player.delegate = self;
    }else{
        NSLog(@"音乐不存在.....");
    }
    if (!player.isPlaying) {
        //禁止滑动划块
        musicVolum.enabled = NO;
        musicSlider.enabled = NO;
    }
    

    
    
    /*-------------开始播放按钮的音效-------------*/
    //按钮按下，播放系统声音
    //2 得到声音文件的名称
    NSString *beginName = [[NSBundle mainBundle]pathForResource:@"button-9" ofType:@"mp3"];
    //3 根据名称得到路径
    if (beginName) {
        NSURL *beginURL = [NSURL fileURLWithPath:beginName];
        //4 根据路径，注册声音
        OSStatus err = AudioServicesCreateSystemSoundID((CFURLRef)CFBridgingRetain(beginURL),&beginID);
    }else{
        NSLog(@"声音文件找不到");
    }
    
    /*-------------暂停播放按钮的音效-------------*/
    //按钮按下，播放系统声音
    //2 得到声音文件的名称
    NSString *stopName = [[NSBundle mainBundle]pathForResource:@"button-3" ofType:@"mp3"];
    //3 根据名称得到路径
    if (stopName) {
        NSURL *stopURL = [NSURL fileURLWithPath:stopName];
        //4 根据路径，注册声音
        OSStatus err = AudioServicesCreateSystemSoundID((CFURLRef)CFBridgingRetain(stopURL),&stopID);
    }else{
        NSLog(@"声音文件找不到");
    }


    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 按钮按下后的操作
- (IBAction)buttonPress:(UIButton *)sender {
    if (player.isPlaying) {
        //允许滑动划块
        musicVolum.enabled = NO;
        musicSlider.enabled = NO;
        // 取消timer对象，对应的界面更新方法同时注销
        [self.timer invalidate];
        
        //按钮暂停音效
        AudioServicesPlaySystemSound(stopID);
        //音乐暂停
        [self.player pause];
        //修改按钮文字
        [self.playButton setTitle:@"播放" forState:UIControlStateNormal];
    }else{
        musicVolum.enabled = YES;
        musicSlider.enabled = YES;
        
        //按钮开始音效
        AudioServicesPlaySystemSound(beginID);
        //开始播放
        [self.player play];
        //修改按钮文字
        [self.playButton setTitle:@"暂停" forState:UIControlStateNormal];
        /*------音乐播放，开始计时-------*/
        self.timer = [NSTimer scheduledTimerWithTimeInterval:(0.3) target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
    }
}


//滑动划块，调节音量
- (IBAction)changeVolum:(UISlider *)sender {
    //把划块的值赋给 播放器
    player.volume = sender.value;
}

//滑动划块，调节音乐的进度
- (IBAction)changePress:(UISlider *)sender {
    //滑动时，音乐先暂停
    // 先暂停播放
    [player pause];
    // 设置播放进度,0.0-1.0 之间的百分比，知道总时长
    player.currentTime = sender.value * player.duration;
}

//滑动结束，手离开划块，继续播放音乐
- (IBAction)changePressDone:(UISlider *)sender {
    [player play];
}


#pragma mark - 自定义方法
-(void)onTimer
{
    //刷新页面,时间显示,进度条显示
    //播放器，当前播放了多少秒
    NSTimeInterval currTime =  [player currentTime];
    //音乐的总时长
    NSTimeInterval allTime = [player duration];
    
    NSString *timeLbl = [NSString stringWithFormat:@"%@  of  %@",[self formatTime:currTime],[self formatTime:allTime]];
    self.musicTime.text = timeLbl;
    
    //更新进度条,计算百分比
    self.musicSlider.value = currTime/allTime;
}

// 格式化播放时间的方法
- (NSString* )formatTime:(int)num {
    int sec = num % 60; // 秒
    int min = num / 60; // 分钟
    return [NSString stringWithFormat:@"%i:%02i", min, sec];
}


#pragma mark - 实现播放器协议中的方法
//播放器停止
-(void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag
{
    //清除 时间显示、进度显示、还原音量
    self.musicTime.text = @""; //进度
    self.musicVolum.value = 0.5;  //音量
    //还原按钮文字
    // 注销timer对象
    [self.timer invalidate];
    
}

@end











