//
//  main.m
//  oc-Day8
//
//  Created by liu on 13-10-14.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Demo1  包装类型!");
        //新瓶装旧酒
        int num = 10;        //旧瓶子 int
        NSInteger num2= 10;  //新瓶子 NSInteger ，不是指针
        //NSInteger 看起来与 NSString 一样，本质不一样，本质还是int
        //[num2 xxx]; //错误   不是对象，不能调用方法
        int sum = num +num2;
        //int 、shor、long、long long、float、double、unsigned int、char
        //typedef long NSInteger;
        //NSInteger  其他类型没有包装
        
        NSString *str = [[NSString alloc]init]; //真正的对象类型
        [str stringByAppendingString:@"hello"]; //可以调用方法
        
        
        //OC 中所有带值的基础类型，全部用一个类标示  NSValue
        //NSValue 可以包装任意类型的值  包装为对象
        //新建一个  float 的值，包装为对象
        float ff = 100.0f;
        //[ff ] //无法调用方法
        
        //NSNumber 包装类的作用
        //1 把 基本实数类型，包装成  引用类型
        //2 包装后，提供了方法，在不同数据类型之间进行转换
        //3 包装后，提供方法，比较不同的对象值
        NSNumber *n1 = [NSNumber numberWithFloat:100.0f];
        BOOL b1 = [n1 boolValue];  //float 类型转换为 BOOL
        char c1 = [n1 charValue];  //float 类型转换为 char
        NSString *s1 = [n1 description];//float 类型转换为 NSString
        
        NSNumber *n2 = [NSNumber numberWithInt:200];
        
        //比较
        NSComparisonResult *rs =  [n1 compare:n2];
        //比较结果由三种，大于、等于、小于
        //NSOrderedAscending  n2 > n1
        //NSOrderedSame       n2 = n1
        //NSOrderedDescending n2 < n1
        if (rs == NSOrderedAscending) {
            NSLog(@"n1 比 n2 小");
        }
        if (rs == NSOrderedSame) {
            NSLog(@"n1 与 n2 相等");
        }
        if (rs == NSOrderedDescending) {
            NSLog(@"n1 比 n2 大");
        }
        
        ///////
        //特殊的包装类，包装 空   null  nil
        //NSNull
        
        NSLog(@"NSSting 字符串操作 ");
        NSString * str1 = [[NSString alloc]init];
        str1  = @"this is a String ";
        
        //initWithString: 目前已经不推荐使用
        //NSString * str2 = [[NSString alloc]initWithString:@"this is a String "];
        NSString * str2 = @"this is a String";
        
        //第一个参数指定格式，后面给定值，值的个数不确定
        NSString *str3 = [[NSString alloc]initWithFormat:@"i =%d ,j=%c ,k=%f ",10,'c',23.56f];
        NSLog(@"str3 = %@ ",str3);
        
        
        //C 语言字符串，转换为 OC 字符串
        char * cString = "hello String";  //字符数组
        NSString * ocString = [[NSString alloc]initWithCString:cString encoding:NSUTF8StringEncoding];
        
        //OC 语言字符串，转换为  C 语言字符串
        char * cS1 = [str2 cStringUsingEncoding:NSUTF8StringEncoding];
        char * cS2 = [str2 UTF8String];
        NSLog(@"c String cs1 = %s , cs2 = %s \n",cS1,cS2);
        
        
        //范围  NSRange  NSPoint   NSSize   NSRect
        //NSRange 有两个值  location   length
        //"123abAAsAbbcc" 字符串长度 13 个字母
        //找出 ab 在上述字符串中的位置   a 在第4 个字母的位置上
        //ab  总共只有 2 个字母
        //从 第 4 个字母开始，往后数 2 个字母的长度---范围
        //范围从 0 开始
        //字符串内容不能变化
        NSString *strr = @"123abAAsAbbcc";
        NSRange r1 ={3,2};
        //在字符串中，按照指定范围查找
        NSLog(@"字符串总长度为 %ld",[strr length]);
        NSLog(@"%@",[strr substringWithRange:r1]);
        
        //新建内容可以变化的字符串，可以进行内容替换
        NSMutableString *mutStr = [[NSMutableString alloc]initWithString:strr];
        [mutStr replaceCharactersInRange:r1 withString:@"ZZ"];
        
        //替换完毕，再转换为  NSSting
        strr = [mutStr description];
        
        NSLog(@"替换后的新字符串为 %@ ",strr);
        
        
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}

