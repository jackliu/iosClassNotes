//
//  BonfireAppDelegate.m
//  Bonfire
//
//  Created by apple on 10/2/08.
//  Copyright Amuck LLC 2008. All rights reserved.
//

#import "BonfireAppDelegate.h"
#import "RootViewController.h"

@implementation BonfireAppDelegate


@synthesize window;
@synthesize rootViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
	// Hide the status bar
	[[UIApplication sharedApplication] setStatusBarHidden:YES animated:NO];
	[window addSubview:[rootViewController view]];
	[window makeKeyAndVisible];
}


- (void)dealloc {
	[rootViewController release];
	[window release];
	[super dealloc];
}

@end
