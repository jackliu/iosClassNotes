//
//  main.c
//  cCodeDay22
//
//  Created by liu on 13-9-3.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#include <stdio.h>
#include "code.h"

//在{} 作用域外部定义的变量，作用域是  ?
int num=20;


int main(int argc, const char * argv[])
{
    //show();
    
    int num = 10;
    
    print(num);
    
    printf("num = %d \n",num);
    
    return 0;
}

