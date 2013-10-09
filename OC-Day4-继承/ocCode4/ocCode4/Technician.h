//
//  Technician.h
//  ocCode4
//
//  Created by liu on 13-10-9.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Employee.h"

@interface Technician : Employee
{
    double workTime;  //工作时间
}

@property(nonatomic,assign)double workTime;

//单独编写方法计算工资
-(double)getTechicianSalary;

@end
