//
//  Stud.m
//  objc-demo
//
//  Created by liu on 13-5-2.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Stud.h"

@implementation Stud

@synthesize name,age,height;

/*
 定义比较结果的枚举值
 enum {
 NSOrderedAscending = -1,
 NSOrderedSame,
 NSOrderedDescending
 };
 typedef NSInteger NSComparisonResult;
 
 */
//按照年龄排序，每个条件单独写一个方法
-(NSComparisonResult)compareStuAge:(Stud *) stu
{
    // compare  方法比较后返回比较结果
    return [[self age] compare:[stu  age]];
}

//按照身高排序
-(NSComparisonResult)compareStuHeight:(Stud *) stu
{
    return [[self height] compare:[stu height]];
}



@end
