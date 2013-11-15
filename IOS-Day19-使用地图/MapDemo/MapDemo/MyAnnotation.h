//
//  MyAnnotation.h
//  MapDemo
//
//  Created by shangdejigou on 13-11-14.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <Foundation/Foundation.h>

//导入大头针的协议
#import <MapKit/MKAnnotation.h>

@interface MyAnnotation : NSObject<MKAnnotation>

//大头针的坐标
@property(nonatomic,assign)CLLocationCoordinate2D coordinate;
//大头针上的主标题
@property(nonatomic,retain)NSString *title;
//大头针上的副标题
@property(nonatomic,retain)NSString *subtitle;


@end






