//
//  RunDay12.m
//  objc-demo
//
//  Created by liu on 13-5-2.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "RunDay12.h"

//导人 员工类头文件
#import "Emple.h"
#import "Stud.h"

@implementation RunDay12

@synthesize array,dict,set,marray,mdict,mset;

-(void)run
{
    @autoreleasepool {
        NSLog(@"今天演示集合类的使用...");
        //[self useNSArray];
        [self sortNSArray];
    }
}


-(void)initNSArray
{
     //再次创建一个数组对象，存放 员工的对象
     Emple *e1 = [[Emple alloc]initWithNumber:@"aaa" andName:@"aaa" andPay:[NSNumber numberWithInt:2000]];
     Emple *e2 = [[Emple alloc]initWithNumber:@"bbb" andName:@"bb" andPay:[NSNumber numberWithInt:3000]];
     Emple *e3 = [[Emple alloc]initWithNumber:@"ccc" andName:@"ccc" andPay:[NSNumber numberWithInt:4000]];
     Emple *e4 = [[Emple alloc]initWithNumber:@"ddd" andName:@"ddd" andPay:[NSNumber numberWithInt:5000]];
     Emple *e5 = [[Emple alloc]initWithNumber:@"eee" andName:@"eee" andPay:[NSNumber numberWithInt:6000]];
     
     //- (id)initWithObjects:(id)firstObj, ...
     array = [[NSArray alloc]initWithObjects:e1,e2,@"hhh",e3, nil];
     //得到集合对象中数据的 个数
     NSLog(@"当前集合中数据个数为 %ld ",[array count]);
    
    
    //判断 e1 是否是 Empl 类型
    if ([e1 isMemberOfClass:[Emple class]]) {
        
    }
    
    
    
}



#pragma mark - 对数组对象的操作
-(void)useNSArray
{
    //如何创建？
    //工厂方法创建
    //+ (id)arrayWithObjects:(id)firstObj, ...
    array = [NSArray arrayWithObjects:@"aa",@"bb",@"cc",@"dd",@"ee",nil];
    //得到集合对象中数据的 个数
    NSLog(@"当前集合中数据个数为 %ld ",[array count]);
    
    //如何存取？
    //查询，判断 @"bb" 是否在数组中存在
    BOOL b = [array containsObject:@"bb"];
    if (b) {
        NSLog(@"bb 包含在数组中的");
    }else
    {
        NSLog(@"bb 不包含在数组中");
    }
    //取最后的一个数据
    NSLog(@"lastObject : %@",[array lastObject]);
    //从任意位置取值
    //- (id)objectAtIndex:(NSUInteger)index
    NSLog(@" 任意位置  %@",[array objectAtIndex:3]);
    //从 0-3 指定范围取值
    //- (NSArray *)objectsAtIndexes:(NSIndexSet *)indexes
    //指定一个范围
    //+ (id)indexSetWithIndexesInRange:(NSRange)indexRange
    /*
    typedef struct _NSRange {
        NSUInteger location;   //范围的起点
        NSUInteger length;     //范围的长度
     } NSRange;
     */
    NSRange range ;
    range.location =  1;
    range.length   = 3;
    NSIndexSet *indexSet = [NSIndexSet indexSetWithIndexesInRange:range];
    NSArray *subArr = [array objectsAtIndexes:indexSet];
    
    
    //如何迭代、循环？
    //方法一
    //按照下标索引循环
    for (int i = 0; i<[array count]; i++) {
        NSLog(@"集合中存储的第 %d 个值为  %@ ",i+1,[array objectAtIndex:i]);
    }
    
    //方法二
    //使用新的 for 循环
    for (NSString *temp in array) {
        NSLog(@"集合中存储的值为  %@ ",temp);
    }
    
    //方法三
    //使用迭代器循环
    //把 array 集合中的数据，挨个排队，另外专门找人，从队列中安排取值
    //NSEnumerator *enumerator = [array objectEnumerator];
    NSEnumerator *enumerator = [array reverseObjectEnumerator];
    
    id anObject;
    //使用迭代器对象取下一个值，如果能够取出，继续循环取下一个值
    //否则就说明，取到最后一个值，终止循环
    while (anObject = [enumerator nextObject]) {
        NSLog(@"集合中数据为  %@ ",anObject);
    }
    
    
    
    //如何扩展？
    //排序
    
    
}

-(void)sortNSArray
{
    //判断 某个对象，是否实现了协议中的某个方法
    //(SEL)
    //@selector(方法名)
    
    //对集合中所有员工，按照工资排序
    //- (NSArray *)sortedArrayUsingSelector:(SEL)comparator
    //按照指定的比较器，对集合中数据进行排序
    //类似于淘宝：按照价格排序、按照销量排序、、、、
    //上述每个 排序的条件，都看作一个  选择器
    //新建三个学生
    Stud *s = [[Stud alloc]init];
    [s setName:@"小明"];
    [s setAge:[NSNumber numberWithInt:20]];
    [s setHeight:[NSNumber numberWithInt:170]];
    
    Stud *s1 = [[Stud alloc]init];
    [s1 setName:@"小王"];
    [s1 setAge:[NSNumber numberWithInt:23]];
    [s1 setHeight:[NSNumber numberWithInt:180]];
    
    Stud *s2 = [[Stud alloc]init];
    [s2 setName:@"小张"];
    [s2 setAge:[NSNumber numberWithInt:18]];
    [s2 setHeight:[NSNumber numberWithInt:200]];
    
    //先把这些学生放入数组
    NSArray *arr1 = [[NSArray alloc]initWithObjects:s,s2,s1,nil];
    //用指定的 排序方法，对集合中数据进行排序
    NSArray *arr2 = [arr1 sortedArrayUsingSelector:@selector(compareStuAge:)];
    
    //循环输出
    for (Stud *temp in arr2) {
        NSLog(@"学员姓名 %@ ，年龄 %@ ，身高 %@",temp.name,temp.age,temp.height);
    }
    /*
    for (int i=0;i<[arr2 count];i++) {
        Stud *temp = [arr2 objectAtIndex:i];
        NSLog(@"学员姓名 %@ ，年龄 %@ ，身高 %@",temp.name,temp.age,temp.height);
    }
     */
    
}


@end




