//
//  main.c
//  cCode
//
//  该程序是我们的第一个 C 语言程序
//
//  Created by liu on 13-8-22.
//  Copyright (c) 2013年 liu. All rights reserved.
//

//导入 <link href="ccc.css" .. />
//把外部的文件内容，导入到当前文件中
//好处：运行的时候一起运行
#include <stdio.h>

//main() 函数，主函数，格式固定，程序运行的入口
int main(int argc, const char * argv[])
{
    //{} 表示 方法中有多行代码
    // insert code here...
    
    //直接使用了 stdio.h 文件中的方法 printf()
    //打印一句话到  控制台
    printf("Hello, World!\n");
    
    //方法需要返回值，这里返回一个默认值
    return 0;
}






