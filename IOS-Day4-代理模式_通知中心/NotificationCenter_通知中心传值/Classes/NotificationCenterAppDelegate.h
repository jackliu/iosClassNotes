//
//  NotificationCenterAppDelegate.h
//  NotificationCenter
//
//  Created by mei xun on 11-5-18.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NotificationCenterViewController;

@interface NotificationCenterAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    NotificationCenterViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet NotificationCenterViewController *viewController;

@end

