//
//  WKStudent+Find.h
//  ocDay6
//
//  Created by liu on 13-10-11.
//  Copyright (c) 2013年 liu. All rights reserved.
//  扩展 类别

#import "WKStudent.h"

@interface WKStudent (Find)

//查找指定姓名的学员，找到返回 YES ，否则返回 NO
-(BOOL)findName:(NSString *)n;

//
-(BOOL)findOFSurname:(NSString *)n;

@end
