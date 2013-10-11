//
//  Student+Music.h
//  ocDay6
//
//  Created by liu on 13-10-11.
//  Copyright (c) 2013年 liu. All rights reserved.
//
//   希望学生回家后学习各种音乐知识
//

#import "Student.h"

//@interface  类名 (类别名)
@interface Student (Music)
{
    //类别中不需要定义属性
}

//直接定义属性的 getter/setter 方法
//是否懂得乐谱
@property(nonatomic,assign)BOOL flag;

//弹钢琴
-(void)playPiano;
//拉小提琴
-(void)playViolin;
//其他乐器.......

@end






