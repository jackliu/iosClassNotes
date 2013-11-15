//
//  ViewController.h
//  MapDemo
//
//  Created by shangdejigou on 13-11-14.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

//实现 MKMapViewDelegate 控制地图
//实现 CLLocationManagerDelegate 对地理坐标进行控制
@interface ViewController : UIViewController<MKMapViewDelegate, CLLocationManagerDelegate>
{
    //地图对象 ，类似于 UIImageView
    MKMapView *map;
    
    //地理位置对象
    CLLocationManager *locationManager;
}

@end





