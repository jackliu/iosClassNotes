//
//  ProvinceModel.h
//  ios-05-28-XMLDemo
//
//  Created by liu on 13-5-28.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <Foundation/Foundation.h>
//导入XML操作类
#import "GDataXMLNode.h"

@interface ProvinceModel : NSObject

@property(nonatomic,retain)NSString *provinceNumber;
@property(nonatomic,retain)NSString *provinceName;

//得到 XML 文档对象
-(GDataXMLDocument *)getXMLDocument;


//得到根节点下面，所有的省份
-(NSMutableArray *)getAllProvinces:(GDataXMLDocument *)xmldoc;

@end








