//
//  Student.m
//  ocDay6
//
//  Created by liu on 13-10-11.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Student.h"

////////匿名类别 声明在"实现文件"的顶部//////


///
@implementation Student

@synthesize name,age;

//听课
-(void)lessionClass
{
    NSLog(@"在学校好好听课");
}

//做作业
-(void)doHomwowrk
{
    NSLog(@"回家做家庭作业");
}

///////家长期望//////
//如果类和类别中，方法相同，调用 ??
-(void)football
{
    NSLog(@"Student 类中，练习踢足球");
}

///////实现的协议的方法//////////
-(void)award:(int)a
{
    switch (a/10) {
        case 6:
        case 7:
            NSLog(@"大吃一顿");
            break;
       case 8:
            NSLog(@"旅游");
            break;
       case 10:
            NSLog(@"买 iPad ");
            break;
        default:
            NSLog(@"什么都不奖励，乖乖学习");
            break;
    }
}



//定义 私有方法，只实现，不在头文件中定义的方法
-(void)playGame
{
    NSLog(@"回家偷偷玩游戏....");
}




@end



