//
//  work2.m
//  OCCode
//
//  Created by liu on 13-10-7.
//  Copyright (c) 2013年 liu. All rights reserved.
//

//导入自己的头文件
#import "work2.h"

//@implementation 实现 @interface 接口中定义的所有函数
@implementation work2

//打印 九九乘法表
-(void)method1
{
    NSLog(@"打印九九乘法表!");
    for (int i=1; i<10; i++) {
        // ""  C 语言的字符串格式
        //NSLog 只能打印 OC 的字符串 @""
        //NSLog(@"%d * %d = %d",i,i,i*i);
        //printf("%d * %d = %d\t",i,i,i*i);
        for (int j=1; j<=i; j++) {
            printf("%d * %d = %d\t",j,i,j*i);
            if (i==j) {
                printf("\n");
            }
        }
    }
}


//求两个数字中较大的值
-(int)getMax:(int)num1 :(int)num2
{
    return num1>num2?num1:num2;
}

//求两个数字中较小的值
-(int)getMinNum1:(int)num1 andNum2:(int)num2
{
    return num1<num2?num1:num2;
}

@end



//代码写这里，与当前类无关