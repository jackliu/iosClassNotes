//
//  AAAViewController.m
//  LocationDemo
//
//  Created by shangdejigou on 13-11-15.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "AAAViewController.h"

@interface AAAViewController ()

@end

@implementation AAAViewController


@synthesize language,title,content;


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
    //初始化标签上的文字
    //得到当前系统使用的 “语言标示”，显示在 language 标签上
    //localeIdentifier  本地  标示字符串
    NSLocale *locale = [NSLocale currentLocale];
    NSString *localNameString = [locale displayNameForKey:NSLocaleIdentifier value:[locale localeIdentifier]];
    
    self.language.text = localNameString;
    
    //自定义的内容
    //NSLocalizedString
    //参数1 从本地化文件 xxx.strings 文件中取值的 key
    //参数2 对前面 key 的描述、介绍
    self.titl.text = NSLocalizedString(@"key1", @"say hello title");
    self.content.text = NSLocalizedString(@"key2", @"speak contents");
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
