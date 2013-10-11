//
//  WKStudent+Find.m
//  ocDay6
//
//  Created by liu on 13-10-11.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "WKStudent+Find.h"

@implementation WKStudent (Find)

//查找指定姓名的学员，找到返回 YES ，否则返回 NO
-(BOOL)findName:(NSString *)n
{
    BOOL flag = NO;
    //参数判断，如果传入的参数为空
    if (n == nil) {
        return flag;
    }
    
    //NSComparisonResult  代别比较结果 >0 =0 <=
    if ([n compare:[self name]]) {
        flag = YES;
    }
    
    return flag;
}

@end






