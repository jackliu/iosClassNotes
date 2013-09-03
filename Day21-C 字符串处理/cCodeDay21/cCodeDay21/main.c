//
//  main.c
//  cCodeDay21
//
//  Created by liu on 13-9-2.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
//系统专门定义的 ，处理字符串的函数头文件
#include <string.h>
#include <stdlib.h>

//调用函数，必须先导入头文件
#include "mystring.h"

////
#include "mystring.h"


int main(int argc, const char * argv[])
{
    
   //代码独立到单独的函数文件中，好处
    //可以通过函数名字，直接调用执行函数内部的代码
    //10句代码，通过一句就可以重复调用
    //人们把常用的代码块，按照不同的方式存放，形成函数库
    demo2();
    
    
    
    return 0;
}








