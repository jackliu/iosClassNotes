//
//  BaseClass.h
//
//  Created by 殷佳斌  on 13-11-11
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Stu1;

@interface BaseClass : NSObject <NSCoding>

@property (nonatomic, strong) Stu1 *stu1;

+ (BaseClass *)modelObjectWithDictionary:(NSDictionary *)dict;
- (id)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
