//
//  Stu1.h
//
//  Created by 殷佳斌  on 13-11-11
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Stu1 : NSObject <NSCoding>

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) double age;
@property (nonatomic, strong) NSString *sex;

+ (Stu1 *)modelObjectWithDictionary:(NSDictionary *)dict;
- (id)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
