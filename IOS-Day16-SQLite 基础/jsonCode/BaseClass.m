//
//  BaseClass.m
//
//  Created by 殷佳斌  on 13-11-11
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "BaseClass.h"
#import "Stu1.h"


@interface BaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation BaseClass

@synthesize stu1 = _stu1;


+ (BaseClass *)modelObjectWithDictionary:(NSDictionary *)dict
{
    BaseClass *instance = [[BaseClass alloc] initWithDictionary:dict];
    return instance;
}

- (id)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.stu1 = [Stu1 modelObjectWithDictionary:[dict objectForKey:@"stu1"]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.stu1 dictionaryRepresentation] forKey:@"stu1"];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.stu1 = [aDecoder decodeObjectForKey:@"stu1"];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_stu1 forKey:@"stu1"];
}


@end
