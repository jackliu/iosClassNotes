//
//  ViewController.m
//  fmdbDemo
//
//  Created by shangdejigou on 13-11-12.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ViewController.h"

#import "SUser.h"
#import "SUserDB.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPress:(id)sender {
    //1 建立数据库访问对象
    SUserDB *userdb = [[SUserDB alloc]init];
    //创建好数据库表
    [userdb createDataBase];
    
    //增加数据到数据库中
    SUser *u1 = [[SUser alloc]init];
    SUser *u2 = [[SUser alloc]init];
    SUser *u3 = [[SUser alloc]init];
    
    [u1 setName:@"赛峰"];
    [u1 setDescription:@"aaaaa"];
    [u2 setName:@"赵总"];
    [u2 setDescription:@"bbbb"];
    [u3 setName:@"俊哥"];
    [u3 setDescription:@"ccccc"];
    
    [userdb saveSuser:u1];
    [userdb saveSuser:u2];
    [userdb saveSuser:u3];
    
    
    //2 执行查询方法，得到查询结果
    NSArray *array = [userdb findAll];
    
    for (SUser *user in array) {
        NSLog(@"user uid: %@,uname : %@",[user uid],[user name]);
    }
    
}


@end



