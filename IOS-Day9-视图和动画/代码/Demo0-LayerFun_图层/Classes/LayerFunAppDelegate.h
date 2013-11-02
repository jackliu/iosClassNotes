//
//  LayerFunAppDelegate.h
//  LayerFun
//
//  Created by Ray Wenderlich on 12/16/10.
//  Copyright 2010 Ray Wenderlich. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LayerFunViewController;

@interface LayerFunAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    LayerFunViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet LayerFunViewController *viewController;

@end

