//
//  TimerAppDelegate.h
//  Timer
//
//  Created by goodmao on 12-3-20.
//  Copyright 2012 LDCI. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TimerViewController;

@interface TimerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TimerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TimerViewController *viewController;

@end

