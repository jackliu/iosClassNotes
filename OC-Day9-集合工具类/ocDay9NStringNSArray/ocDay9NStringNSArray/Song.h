//
//  Song.h
//  ocDay9NStringNSArray
//
//  Created by liu on 13-10-15.
//  Copyright (c) 2013年 liu. All rights reserved.
//  代表一首歌曲

#import <Foundation/Foundation.h>

@interface Song : NSObject

@property(nonatomic,retain)NSString *songName; //歌曲名称
@property(nonatomic,retain)NSString *songer;   //艺术家
@property(nonatomic,retain)NSString *cdName;   //专辑名称
@property(nonatomic,assign)int times;          //长度

@end
