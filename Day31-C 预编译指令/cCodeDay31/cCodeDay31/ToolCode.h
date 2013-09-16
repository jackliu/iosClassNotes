//
//  ToolCode.h
//  cCodeDay31
//
//  Created by liu on 13-9-16.
//  Copyright (c) 2013年 liu. All rights reserved.
//

//不带参数的宏，只有名称
#define BR printf("\n")

//带参数的宏，有名称和(参数)
//求两个数据的和、平方、余数
//带参数的宏，每个参数都需要用 () 确定运算的优先级
#define SUM(a,b)  (a)+(b)

#define SQR(x)   (x)*(x)

#define DIV(a,b)  (a)/(b)
// a = 50+50   b = 10+10
// 50+(50/10)+10

//调试专用的宏
#define LOG_LINE  printf("%s:%d\n",__FILE__,__LINE__)
#define LOG_TIME  printf("%s,%s\n",__DATE__,__TIME__)














