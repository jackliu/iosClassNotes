//
//  UserModel.h
//  ios-05-28-XMLDemo
//
//  Created by liu on 13-5-28.
//  Copyright (c) 2013年 liu. All rights reserved.
//  从 user.xml 中读取并打印数据

#import <Foundation/Foundation.h>

@interface UserModel : NSObject

//使用 xml DOM 模型，打印 xml 中的数据
-(void)printXMLUseDom;

@end
