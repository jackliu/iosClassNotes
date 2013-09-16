//
//  main.c
//  cCodeDay31
//
//  Created by liu on 13-9-16.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
//导入外部定义的所有尺寸
#include "iosSize.h"

#include "ToolCode.h"

#include "MyHeader.h"

//取消之前定义过的宏
//#undef PI


int main(int argc, const char * argv[])
{
    LOG_TIME;
    printf("PI  = %d \n",PI);
    long i = 1;
    while (i<1000000000) {
        i++;
    }
    
    LOG_LINE;
    
    
    // insert code here...
    // 调用外部定义的宏 名字，能够替换成具体的值
    printf("iPhone 3GS 的 高度为 %d !",I_3GS_HEIGHT);
    //printf("\n");
    BR;
    printf("hello");
    
    int x = 100;
    int y = 20;
    
    printf("x 加上 y 的结果为  %d ",SUM(x,y));
    BR;
    printf("x 除以 y 的结果为  %d ",DIV((50+50),(10+10)));
    BR;
    //  100+20*100+20 = 2120
    //  (100+20)*(100+20) = 14400
    printf("x 的平方为 %d ",SQR(x+y));
    
    BR;
    BR;
    printf("------------------");
    BR;
    printf("当前系统日期为 %s \n",__DATE__);
    printf("当前系统时间为 %s \n",__TIME__);
    //当前文件信
    printf("当前代码行数 %d \n",__LINE__);
    printf("当前文件的名称 %s \n",__FILE__);
    
    
    LOG_TIME;
    
    return 0;
}

