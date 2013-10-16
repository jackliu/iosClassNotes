//
//  NSDictDemo.m
//  ocDay10
//
//  Created by liu on 13-10-16.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "NSDictDemo.h"
#import "Car.h"

@implementation NSDictDemo

//演示 字典对象的创建与迭代
-(void)demo1
{
    Car *c1 =[[Car alloc]init];
    [c1 setName:@"哈佛H4"];
    [c1 setPrice:[NSNumber numberWithInt:8]];
    
    Car *c2 =[[Car alloc]init];
    [c2 setName:@"奔腾X80"];
    [c2 setPrice:[NSNumber numberWithInt:18]];
    
    Car *c3 =[[Car alloc]init];
    [c3 setName:@"丰田RAV4"];
    [c3 setPrice:[NSNumber numberWithInt:21]];
    
    Car *c4 =[[Car alloc]init];
    [c4 setName:@"海马"];
    [c4 setPrice:[NSNumber numberWithInt:17]];
    
    //方法一，使用类方法创建
    NSDictionary *dict1 = [NSDictionary dictionaryWithObjects:@[c1,c2,c3,c4] forKeys:@[@"c1",@"a2",@"c3",@"c4"]];
    
    //NSDictionary *dict2 = [NSDictionary dictionaryWithObjects:c1,c2,c3,c4 forKeys:@"c1",@"c2",@"c3",@"c4" count:4];
    
    
    //方法二，使用初始化方法创建
    NSDictionary *dict4 = [[NSDictionary alloc]initWithObjectsAndKeys:c1,@"c1",c2,@"c2",c3,@"c3",c4,@"c4", nil];
    
    //方法三，使用类似与数组的方法创建
    NSDictionary *dict3 = [NSDictionary dictionaryWithObjectsAndKeys:c1,@"c1",c2,@"c2",c3,@"c3",c4,@"c4",nil];

    
    //方法四，根据配置文件内容创建
    NSDictionary *dict5 = [NSDictionary dictionaryWithContentsOfFile:@"/Users/liu/Documents/iosClassNotes/OC-Day10/ocDay10/ocDay10/myProperty.plist"];
    
    //如何得到字典对象中的值
    //方法一，按照 一个  key 读取一个 value 的原则
    Car *cc = [dict3 objectForKey:@"c1"];
    NSLog(@"%@  %@",[cc name],[cc price]);
    
    NSString *stuName = [dict5 objectForKey:@"stu1"];
    NSLog(@"配置文件中，stu1 对应是  %@ ",stuName);

    //方法二，取出多个值
    //先告诉程序，要取哪几个值
    NSArray *keys = @[@"c1",@"c2",@"c3",];
    //按照指定的多个  key 取值，如果取不到 放入 null
    NSArray *values = [dict3 objectsForKeys:keys notFoundMarker:[NSNull null]];
    
    //方法三，默认循环，得到所有的 key
    NSLog(@"默认循环--------------------------");
    for (NSString *key in dict3) {
        Car *value = [dict3 objectForKey:key];
        NSLog(@"%@  %@",[value name],[value price]);
    }
    
    //方法四，直接取出所有的 value
    NSLog(@"直接得到 values 循环--------------------------");
   NSArray *valArr =  [dict3 allValues];
    for (Car *temp in valArr) {
        NSLog(@"%@  %@",[temp name],[temp price]);
    }
    
}



@end





