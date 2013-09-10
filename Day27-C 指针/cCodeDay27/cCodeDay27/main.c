//
//  main.c
//  cCodeDay27
//
//  Created by liu on 13-9-10.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>

//定义两个函数，格式一样 ，两个 float 参数 ，一个 float 返回值
float Max(float _x ,float _y);
float Min(float _x ,float _y);
float zaa(int a,double b);

int main(int argc, const char * argv[])
{
    printf("定义一个专门指向函数的指针，通过指针访问函数内容  \n");
    
    float fNum1 =1.0,fNum2=2.0,fNum3=0.0;
    //定义一个函数指针，该指针只指向两个 float 参数 ，一个 float 返回值格式的函数
    float (*p)(float _x ,float _y);   //key code
    
    //这个例子中 p 可以指向 Max  Min 两个函数
    //这样程序中，就可以不使用 Max Min 两个函数d名字调用函数，只用 p
    
    //把 Max 函数首地址赋给指针 p
    p = Max;                      //key code
    fNum3 = (*p)(fNum1,fNum2);    //key code
    printf("%f 与 %f 中交大的是  %f \n",fNum1,fNum2,fNum3);
    
    //改变指针指向d函数首地址
    p = Min;                     //key code
    fNum3 = (*p)(fNum1,fNum2);   //key code
    printf("%f 与 %f 中交小的是  %f \n",fNum1,fNum2,fNum3);
    
    
    return 0;
}


float Max(float _x ,float _y)
{
    return _x>_y?_x:_y;
}

float Min(float _x ,float _y)
{
    return _x<_y?_x:_y;
}







