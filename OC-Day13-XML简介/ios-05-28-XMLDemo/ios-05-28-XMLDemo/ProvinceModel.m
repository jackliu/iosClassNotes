//
//  ProvinceModel.m
//  ios-05-28-XMLDemo
//  读取纪录中国所有省份信息的 XML 文件中的数据
//
//  Created by liu on 13-5-28.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "ProvinceModel.h"

@implementation ProvinceModel

@synthesize provinceName,provinceNumber;

//得到 XML 文档对象
-(GDataXMLDocument *)getXMLDocument
{
    //1 得到 xml 文档
    //得到文件的名字
    NSString *fileName = [[NSBundle mainBundle]pathForResource:@"Country" ofType:@"xml"];
    //根据名字，得到文件中的数据
    NSData *xmlData = [[NSData alloc]initWithContentsOfFile:fileName];
    //根据数据，创建一个 xml 文档对象
    GDataXMLDocument *doc = [[GDataXMLDocument alloc]initWithData:xmlData options:0 error:nil];
    return doc;
}


//得到根节点下面，所有的省份
-(NSMutableArray *)getAllProvinces:(GDataXMLDocument *)xmldoc
{
    NSMutableArray *provinceArray = [NSMutableArray array];
    //2 从文档中取出 根节点 --root <DataSet>...</DataSet>
    GDataXMLElement *root = [xmldoc rootElement];
    GDataXMLElement *getRegion = [[root elementsForName:@"getRegion"]objectAtIndex:0];
    //找到当前节点 <getRegion> 下，所有省份节点<Province>
    NSArray *arr = [getRegion elementsForName:@"Province"];
    //循环，取出 id 和 name 属性字符串
    for (GDataXMLElement *prov in arr) {
        NSString *pid = [[[prov elementsForName:@"RegionID"]objectAtIndex:0]stringValue];
        NSString *pname = [[[prov elementsForName:@"RegionName"]objectAtIndex:0]stringValue];
        
        //封装所有属性
        ProvinceModel *provinceObject = [[ProvinceModel alloc]init];
        [provinceObject setProvinceNumber:pid];
        [provinceObject setProvinceName:pname];
        //NSLog(@"pid = %@ , pname = %@",provinceObject.provinceNumber,provinceObject.provinceName);
        [provinceArray addObject:provinceObject];
    }
    return provinceArray;
}

@end


