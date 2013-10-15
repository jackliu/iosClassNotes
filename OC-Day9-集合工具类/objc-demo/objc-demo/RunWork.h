//
//  RunWork.h
//  objc-demo
//
//  Created by liu on 13-4-25.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>

//在 *.m 文件中导入文件的方式
//#import "Peson.h"

//在 *.h 文件中导入文件的方式
@class Peson;

@interface RunWork : NSObject


#pragma mark -  创建三个对象，并打印
-(void)createObject1;

#pragma mark - 创建方法，接受 人的对象
-(void)print1:(Peson *) _peson;


#pragma mark - 创建方法，接受 任意类型的对象
-(void)print2:(id) _peson;




@end
