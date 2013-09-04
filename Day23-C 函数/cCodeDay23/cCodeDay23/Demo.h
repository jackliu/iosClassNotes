//
//  Demo.h
//  cCodeDay23
//
//  Created by liu on 13-9-4.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#ifndef cCodeDay23_Demo_h
#define cCodeDay23_Demo_h




//在 main() 函数前声明并实现，正确
void show();

//在 main() 函数前声明，在 main() 函数之后实现
//extern 强调，该函数肯定存在的
extern int add(int i,int j);


void addConstPI();

#endif



