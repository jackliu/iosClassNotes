//
//  Casio.h
//  objc-demo
//
//  Created by liu on 13-4-27.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Watch.h"
//协议使用  import 导入
#import "HeightTest.h"


//类 使用 @class 导入
//@class HeightTest;

//对一个继承了父类的类进行功能扩展
//可以实现一个协议
@interface Casio : Watch<HeightTest>



@end






