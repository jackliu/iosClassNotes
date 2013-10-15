//
//  UseNSNumber.m
//  objc-demo
//
//  Created by liu on 13-4-26.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "UseNSNumber.h"

@implementation UseNSNumber

//创建一个数字对象
-(void)createNumber
{
    @autoreleasepool {
        //使用 带 + 的类方法(工厂方法)  创建数字对象
        NSNumber *intNum = [NSNumber numberWithInt:200];
        int n = 200;  
        //区别，对象能够调用很多函数
        //[intNum isEqual:<#(id)#>];
        //[n ]
        NSNumber *floatNum = [NSNumber numberWithFloat:200.0];
        NSNumber *longNum = [NSNumber numberWithLong:0xabcdef];  //0x 开头是 16 进制的数字
        //打印输出这些数字
        NSLog(@"整数 %i",[intNum intValue]);
        NSLog(@"小数 %f",[floatNum floatValue]);
    }
}


-(void)initNumber
{
    @autoreleasepool {
        NSNumber *num1 =[[NSNumber alloc]initWithBool:YES];
        
        NSNumber *num2 = [[NSNumber alloc]initWithChar:'A'];
        
        NSLog(@"字符 %c ",[num2 charValue]);
        NSLog(@"Bool %i ",[num1 boolValue]);
    }
}


//把数字转化为字符串   200  -->  "200"
-(void)numToString
{
    NSNumber *num = [NSNumber numberWithLong:200];
    NSString *str = [num stringValue];
    
    NSLog(@"数字 %ld ,字符串 %@ ",[num longValue],str);
}


//比较两个数字对象
//返回YES NO
-(void)equalNumber
{
    //创建两个数字对象
    NSNumber *num1 = [NSNumber numberWithInt:20];
    NSNumber *num2 = [[NSNumber alloc]initWithInt:21];
    //比较
    BOOL result = [num1 isEqualToNumber:num2];
    if (result) {
        NSLog(@"两个数字相等");
    }else{
        NSLog(@"两个数字不相等");
    }
    
}

//返回 枚举值  >    <   ==
-(void)comparNumber
{
    //创建两个数字对象
    NSNumber *num1 = [NSNumber numberWithInt:20];
    NSNumber *num2 = [[NSNumber alloc]initWithInt:21];
    //比较  num1  <  num2
    NSComparisonResult result = [num1 compare:num2];
    //判断三个结果
    switch (result) {
        case NSOrderedAscending:
            NSLog(@"num1  <  num2");
            break;
        case NSOrderedDescending:
            NSLog(@"num1  >  num2");
            break;
        case NSOrderedSame:
            NSLog(@"num1 == num2");
            break;
        default:
            NSLog(@"没有其他可能了......");
            break;
    }

}



//使用格式化数字类，创建特殊的数字类型
-(void)createFormatNum
{
    @autoreleasepool {
        //一天中有多少秒 86400 
        NSNumber* secondsInDay = [NSNumber numberWithInt:(60*60*24)];
        
        //创建格式化数字的对象
        NSNumberFormatter* formatter = [[NSNumberFormatter alloc] init];
        //指定格式化的风格
        //[formatter setNumberStyle: NSNumberFormatterSpellOutStyle];
        [formatter setNumberStyle: NSNumberFormatterCurrencyStyle];
        
        
        //把数字按照指定格式，转化为字符串
        NSString* secondsAsString = [formatter stringFromNumber:secondsInDay];
        NSLog ( @"一天中的秒数 (formatted): %@", secondsAsString );
   
    }
}




@end




