//
//  PlayList.h
//  ocDay9NStringNSArray
//
//  Created by liu on 13-10-15.
//  Copyright (c) 2013年 liu. All rights reserved.
//  多首歌曲组成一个 CD

#import <Foundation/Foundation.h>

@interface PlayList : NSObject

@property(nonatomic,retain)NSString *listName; //列表名称  "古典" “乡村”
@property(nonatomic,retain)NSArray *songArr;   //歌曲的集合

@end
