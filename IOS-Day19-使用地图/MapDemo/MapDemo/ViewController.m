//
//  ViewController.m
//  MapDemo
//
//  Created by shangdejigou on 13-11-14.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "ViewController.h"

//导入自定义大头针
#import "MyAnnotation.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	////////////创建并初始化地图对象
    map = [[MKMapView alloc]initWithFrame:self.view.bounds];
    //蓝点定位，用户当前位置
    map.showsUserLocation = YES;
    
    /*
     enum {
     MKMapTypeStandard,   标准地图
     MKMapTypeSatellite,  卫星地图
     MKMapTypeHybrid      混合地图
     };
     typedef NSUInteger MKMapType;
     
     */
    map.mapType = MKMapTypeStandard;
    
    [self.view addSubview:map];
    
    ///////////指定坐标定位///////////
    CLLocationCoordinate2D coords = CLLocationCoordinate2DMake(31.14,121.291891);//
    float zoomLevel = 0.02;
    //Region 坐标范围
    //参数1 中心点 坐标
    MKCoordinateRegion region = MKCoordinateRegionMake(coords, MKCoordinateSpanMake(zoomLevel, zoomLevel));
    
    [map setRegion:[map regionThatFits:region] animated:YES];
    
    ///////////在指定坐标上,添加大头针
    MyAnnotation *ann = [[MyAnnotation alloc]init];
    ann.coordinate = coords;
    ann.title = @"主标题";
    ann.subtitle = @"这里是副标题";
    //把大头针，添加到地图中
    [map addAnnotation:ann];
    
    //////////通过代码，动态获得当前位置  经纬度坐标
    locationManager = [[CLLocationManager alloc]init];
    locationManager.delegate = self;
    //开始更新当前设备的地理 坐标
    [locationManager startUpdatingLocation];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - CLLocationManagerDelegate 
//实现协议方法收到定位成功后的经纬度,刷新界面，更新后台数据
- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    
    //停止更新坐标
    [locationManager stopUpdatingLocation];
    
    //得到纬度
    NSString *strLat = [NSString stringWithFormat:@"%.4f",newLocation.coordinate.latitude];
    //得到经度
    NSString *strLng = [NSString stringWithFormat:@"%.4f",newLocation.coordinate.longitude];
    
    NSLog(@"Lat: %@  Lng: %@", strLat, strLng);
    
    //想看到刚刚搜索到的坐标，根据这个坐标为中心点，新建一个 可视的坐标范围
    CLLocationCoordinate2D coords = CLLocationCoordinate2DMake(newLocation.coordinate.latitude,newLocation.coordinate.longitude);
    float zoomLevel = 0.02;
    MKCoordinateRegion region = MKCoordinateRegionMake(coords,MKCoordinateSpanMake(zoomLevel, zoomLevel));
    //根据更新后的 坐标范围，更新 地图显示内容
    [map setRegion:[map regionThatFits:region] animated:YES];
    
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSLog(@"locError:%@", error);
    
}

@end
