//编译器是从上往下依次读取并运行代码
//如果在上面行中，没有出现过的代码，无法调用
/*
void show(){
    printf("");   //错误，printf() 没有出现过
}
*/


//
//  main.c
//  cCodeDay23
//
//  Created by liu on 13-9-4.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

#include "Demo.h"



//一般打开 main.c 文件希望先看到 main()
//main() 一般是改文件中的第一个函数
int main(int argc, const char * argv[])
{
    show();
    int aa = add(10, 23);
    
    return 0;
}






