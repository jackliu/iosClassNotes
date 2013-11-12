//
//  Stu1.m
//
//  Created by 殷佳斌  on 13-11-11
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "Stu1.h"


@interface Stu1 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Stu1

@synthesize name = _name;
@synthesize age = _age;
@synthesize sex = _sex;


+ (Stu1 *)modelObjectWithDictionary:(NSDictionary *)dict
{
    Stu1 *instance = [[Stu1 alloc] initWithDictionary:dict];
    return instance;
}

- (id)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.name = [self objectOrNilForKey:@"name" fromDictionary:dict];
            self.age = [[dict objectForKey:@"age"] doubleValue];
            self.sex = [self objectOrNilForKey:@"sex" fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.name forKey:@"name"];
    [mutableDict setValue:[NSNumber numberWithDouble:self.age] forKey:@"age"];
    [mutableDict setValue:self.sex forKey:@"sex"];

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

    self.name = [aDecoder decodeObjectForKey:@"name"];
    self.age = [aDecoder decodeDoubleForKey:@"age"];
    self.sex = [aDecoder decodeObjectForKey:@"sex"];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_name forKey:@"name"];
    [aCoder encodeDouble:_age forKey:@"age"];
    [aCoder encodeObject:_sex forKey:@"sex"];
}


@end
