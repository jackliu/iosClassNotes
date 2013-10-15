//
//  Student.m
//  objc-demo
//
//  Created by liu on 13-4-25.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Student.h"

@implementation Student

@synthesize stuAchieve,stuMajor,stuNumber;


-(Student *)init
{
    if (self = [super init]) {
        
    }
    return self;
}

-(Student *)initWithNumber:(NSString *)_number andClassName:(int)_className
                  andMajor:(NSString *)_major
                andAchieve:(double)_achieve
                   andName:(NSString *) _name
                    andAge:(int) _age
                    andSex:(NSString *)_sex
                andAddress:(NSString *) _address
{
    //给父类中定义的属性也赋值
    self = [super initWithName:_name andAge:_age andSex:_sex andAddress:_address];
    
    self.stuNumber = _number;
    self.stuMajor = _major;
    self.className = _className;
    self.stuAchieve = _achieve;
    
    return self;
}





@end
