//
//  Student.h
//  OC-Day2
//
//  Created by liu on 13-10-8.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    NSString *name;
    int age;
    NSString *number;
}

//想省略 getter  setter 方法
//OC 2.0 中提供了一个很好的替代方法，关键字 @property
//一个@property 替代两个方法 setXXX  xxx
@property NSString *name;
@property int age;
@property NSString *number;

-(void)print;


@end




