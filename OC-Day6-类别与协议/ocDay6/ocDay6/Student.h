//
//  Student.h
//  ocDay6
//
//  Created by liu on 13-10-11.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>
//导入协议
#import "StudyProtocal.h"

//类只能继承一个 父类，但是可以实现多个协议
//类除了实现自定义的方法外，还必须实现 协议中的方法
@interface Student : NSObject <StudyProtocal>
{
    NSString *name;
    int age;
}

@property(nonatomic,retain)NSString *name;
@property(nonatomic,assign)int age;

//////学校的要求/////////
//听课
-(void)lessionClass;
//做作业
-(void)doHomwowrk;

//////家长的要求/////////
//-(void)music;
-(void)football;  //如果类和类别中，方法相同，调用 ??
//-(void)programming;
//.. 非常多的期望

//把所有的方法，都定义在一个类中，这个类永远无法结束

@end



//为 Student 新建一个    匿名类别--不写名字的类别
@interface Student()
-(void)playGame;
@end















