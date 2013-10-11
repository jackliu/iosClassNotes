//
//  StudyProtocal.h
//  ocDay6
//
//  Created by liu on 13-10-11.
//  Copyright (c) 2013年 liu. All rights reserved.
//  父母与孩子商定的关于学习的协议

#import <Foundation/Foundation.h>

//不同之处  @protocol 关键字，<另外一个协议>
@protocol StudyProtocal

//奖励方法，在这里只定义，不实现(头文件无法实现)
//a 表示学习成绩
-(void)award:(int) a;


@end





