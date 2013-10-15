//
//  Stud.h
//  objc-demo
//
//  Created by liu on 13-5-2.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stud : NSObject

@property(nonatomic,retain) NSString *name;
@property(nonatomic,retain) NSNumber *age;     //年龄
@property(nonatomic,retain) NSNumber *height; //身高


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
-(NSComparisonResult)compareStuAge:(Stud *) stu;

//按照身高排序
-(NSComparisonResult)compareStuHeight:(Stud *) stu;





@end




