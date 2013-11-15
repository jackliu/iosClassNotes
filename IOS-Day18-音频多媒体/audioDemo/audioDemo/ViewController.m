//
//  ViewController.m
//  audioDemo
//
//  Created by shangdejigou on 13-11-13.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ViewController.h"

//导入 系统音效工具库
#import <AudioToolbox/AudioToolbox.h>
//导入 播放器工具库
#import <AVFoundation/AVFoundation.h>

//匿名类别
@interface ViewController ()<AVAudioPlayerDelegate>

/* -------系统音效--------- */
//1、开始播放的音效ID button-1.mp3
@property(nonatomic,assign)SystemSoundID ssid1;
//暂停播放的音效 button-3.mp3
@property(nonatomic,assign)SystemSoundID ssid2;

/* -------播放器对象--------- */
//声明一个 AVAudioPlayer 播放器
@property(nonatomic,strong)AVAudioPlayer *player;

@end



@implementation ViewController

@synthesize ssid1,ssid2,player;

@synthesize btn;

- (void)viewDidLoad
{
    [super viewDidLoad];
    /////////系统音效/////////
    //2 得到声音路径
    NSString *soundPath1 = [[NSBundle mainBundle]pathForResource:@"button-1" ofType:@"mp3"];
    NSString *soundPath2 = [[NSBundle mainBundle]pathForResource:@"button-3" ofType:@"mp3"];
    
    //3 注册声音
    //判断路径是否存在
    if (soundPath1) {
        NSURL *beginURL = [NSURL fileURLWithPath:soundPath1];
        //4 根据路径，注册声音
        //NSURL --> CFURLRef : 包装 CFBridgingRetain(beginURL)
        OSStatus err = AudioServicesCreateSystemSoundID((CFURLRef)CFBridgingRetain(beginURL),&ssid1);
    }else{
        NSLog(@"声音文件找不到");
    }
    
    if (soundPath2) {
        NSURL *beginURL = [NSURL fileURLWithPath:soundPath2];
        //4 根据路径，注册声音
        //NSURL --> CFURLRef : 包装 CFBridgingRetain(beginURL)
        OSStatus err = AudioServicesCreateSystemSoundID((CFURLRef)CFBridgingRetain(beginURL),&ssid2);
    }else{
        NSLog(@"声音文件找不到");
    }
    
    
    /////////////自定义播放器//////////////////
    //播放器只有一个，改变的只是歌曲的名称
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
    
    //判断播放器状态
    if (!player.isPlaying) {
        //禁止滑动划块
        //musicVolum.enabled = NO;
        //musicSlider.enabled = NO;
    }
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)palyButton:(UIButton *)sender {
   
    //4 播放声音
    //按钮点击，修改按钮上的文字
    if (!isPress) {
        [self.btn setTitle:@"暂停" forState:UIControlStateNormal];
        isPress = YES;
        //播放按钮声音
        AudioServicesPlaySystemSound(ssid1);
        //播放音乐
        [self.player play];
    }else
    {
        [self.btn setTitle:@"播放" forState:UIControlStateNormal];
        isPress = NO;
        //播放
        AudioServicesPlaySystemSound(ssid2);
        [self.player pause];
    }
    
    
}


@end




