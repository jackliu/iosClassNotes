//
//  NSArrayDemo.m
//  ocDay10
//
//  Created by liu on 13-10-16.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "NSArrayDemo.h"
#import "Car.h"

@implementation NSArrayDemo

//演示 迭代器循环
-(void)demo1
{
    //定义并初始化一个 数组对象
    NSArray *arr = @[@"A",@"B",@"C",@"D",@"E"];
    
    NSLog(@"顺序迭代器输出............");
    //得到这个数组的  迭代器对象
    NSEnumerator *enum1 = [arr objectEnumerator];
    //准备开始取出 数组对象中所有的值
    NSString *temp = nil;
    //循环迭代器
    while ((temp = [enum1 nextObject])) {
        NSLog(temp);
    }
    
    NSLog(@"逆序迭代器输出............");
    //reverse  反转
    NSEnumerator *enum2 = [arr reverseObjectEnumerator];
    NSString *temp2=nil;  //给临时量赋   空值
    while ((temp = [enum2 nextObject])) {
        NSLog(temp);
    }
    
    
}


//演示，排序
-(void)demo2
{
    //新建 3 辆车的对象
    Car *c1 =[[Car alloc]init];
    [c1 setName:@"哈佛H6"];
    [c1 setPrice:[NSNumber numberWithInt:11.1]];
    
    Car *c2 =[[Car alloc]init];
    [c2 setName:@"奔腾X80"];
    [c2 setPrice:[NSNumber numberWithInt:18]];
    
    Car *c3 =[[Car alloc]init];
    [c3 setName:@"丰田RAV4"];
    [c3 setPrice:[NSNumber numberWithInt:21]];
    
    //新建一个集合对象
    NSArray *arr = @[c3,c1,c2,c3];
    
    //按照价格排序，排序后，结果保存在新数组中
    //@selector() 方法选择器
    NSArray *arr2 = [arr sortedArrayUsingSelector:@selector(compareByPrice:)];
    for (Car *temp in arr2) {
        NSLog(@"名字  %@ , 价格 %@ ",[temp name],[temp price]);
    }

}



//演示  发送消息给存储的对象
-(void)demo3
{
    //新建 3 辆车的对象
    Car *c1 =[[Car alloc]init];
    [c1 setName:@"哈佛H6"];
    [c1 setPrice:[NSNumber numberWithInt:11.1]];
    
    Car *c2 =[[Car alloc]init];
    [c2 setName:@"奔腾X80"];
    [c2 setPrice:[NSNumber numberWithInt:18]];
    
    Car *c3 =[[Car alloc]init];
    [c3 setName:@"丰田RAV4"];
    [c3 setPrice:[NSNumber numberWithInt:21]];
    
    //新建一个集合对象
    NSArray *arr = @[c3,c1,c2,c3];
    
    //可以不用从集合中取出对象，通过对象来调用 drive
    //通过集合对象，批量调用对象中的 drive 方法
    [arr makeObjectsPerformSelector:@selector(drive)];
    //通过集合对象，批量调用对象中的 drive 方法
    [arr makeObjectsPerformSelector:@selector(stop) withObject:c1];
    
}


//演示，按照条件 过滤集合中的对象
-(void)demo4
{
    //新建 3 辆车的对象
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
    
    
    //新建一个集合对象
    NSArray *arr = @[c3,c1,c2,c4];
    
    //价格小于 20 万 ,根据条件建立过滤器
    NSPredicate *predicate =[NSPredicate predicateWithFormat:@"price > 15"];
    //根据过滤，得到新的数组
    NSArray *newArr = [arr filteredArrayUsingPredicate:predicate];
    //循环输出
    NSEnumerator *enum1 = [newArr objectEnumerator];
    Car *temp = nil;
    while ((temp = [enum1 nextObject])) {
        NSLog(@"%@  ,  %@",[temp name],[temp price]);
    }
    
    
}


@end









