//
//  main.c
//  cCodeDay17
//
//  Created by liu on 13-8-27.
//  Copyright (c) 2013年 liu. All rights reserved.
//

//<> 表示导入的是系统的头文件
//"" 表示导入的是自定义的头文件
#include <stdio.h>
//使用外部调用的函数
///////////////////////////////
///  重点推荐：头文件中声明函数 ///
//////////////////////////////
//导入外部头文件，声明所有的函数
#include "day17.h"
#include "day18.h"

/////////////////////////////////////////
/// 声明外部实现了在  main() 中使用的函数 /// 
///  extern 存在，一次只声明一个函数     ///
////////////////////////////////////////
//extern void function1();

//枚举一周的所有天 'Sun'   "Sun"
//隐式定义，按照值的顺序，代表数字 0、1、2、3、4、5、6
enum weekday{Sun,Mon,Tue,Wed,Thu,Fri,Sat};

//定义枚举类型，幼儿、少年、青年、中年、老年
enum agelevel{level1,level2,level3,level4,level5};


int main(int argc, const char * argv[])
{

    function11();
    
    return 0;
}








