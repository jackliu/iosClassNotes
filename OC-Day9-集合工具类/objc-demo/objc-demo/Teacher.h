//
//  Teacher.h
//  objc-demo
//
//  Created by liu on 13-4-25.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Peson.h"

@interface Teacher : Peson

@property(nonatomic,retain)NSString *techNumber;
@property(nonatomic,retain)NSString *techTitle;
@property(nonatomic,assign)int techSalary;

-(Teacher *)init;
-(Teacher *)initWithNumber:(NSString *)_number   andTitle:(NSString *)_title
                  andSalary:(int)_salary
                   andName:(NSString *) _name
                    andAge:(int) _age
                    andSex:(NSString *)_sex
                andAddress:(NSString *) _address;




@end





