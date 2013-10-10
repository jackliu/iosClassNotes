//
//  Person.h
//  ocDay5
//
//  Created by liu on 13-10-10.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

//父类
@interface Person : NSObject
{
    NSString *name;
    int age;
    //类的属性数据没有限制，创建对象时不能限制死内存的个数，动态按需分配
}

//知识点二：方法的重写
-(void)printMessage;

@end










