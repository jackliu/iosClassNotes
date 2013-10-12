//
//  work1.m
//  objc-demo
//
//  Created by liu on 13-4-17.
//  Copyright (c) 2013年 liu. All rights reserved.
//
/*编写一个程序，程序能完成输出变量值的功能：
 定义所有基本数据类型的变量并初始化变量的值;
 然后输出各变量的值;
 再改变各变量的值重新输出。*/


//导入 刚刚声明的头文件
#import "work1.h"

//@implementation  实现，把 @interface 中声明的函数，在这里实现
@implementation work1

+(void)f1
{
    //测试是否能够运行
    NSLog(@"ok..............");
    //定义基本类型的数据
    int nA=0;//整型变量初始值
	float fB=0;//浮点型变量初始值
	char chC='A';//字符型变量初始值
    
	//printf("整型变量为%d,浮点型变量为%f,字符型变量为%c\n",nA,fB,chC);
    NSLog(@"整数 = %d  ",nA,fB,chC);
    
	printf("请输入整型变量值：");//整型变量重新赋值
	scanf("%d",&nA);
    
    printf("请输入浮点型变量值：");//浮点型变量重新赋值
	scanf("%f",&fB);
    
	fflush(stdin);
	printf("请输入字符型变量值（字母）：");//字符型变量重新赋值
	scanf("%c",&chC);
    
	printf("整型变量为%d,浮点型变量为%f,字符型变量为%c\n",nA,fB,chC);
    
}

@end