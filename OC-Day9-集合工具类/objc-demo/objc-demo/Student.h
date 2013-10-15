//
//  Student.h
//  objc-demo
//
//  Created by liu on 13-4-25.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Peson.h"

@interface Student : Peson

@property(nonatomic,retain)NSString *stuNumber; //学号
@property(nonatomic,assign)int className;      //班级
@property(nonatomic,retain)NSString *stuMajor; //专业
@property(nonatomic,assign)double stuAchieve; //入学成绩


-(Student *)init;
-(Student *)initWithNumber:(NSString *)_number   andClassName:(int)_className
                  andMajor:(NSString *)_major andAchieve:(double)_achieve
                   andName:(NSString *) _name
                    andAge:(int) _age
                    andSex:(NSString *)_sex
                andAddress:(NSString *) _address;


@end




