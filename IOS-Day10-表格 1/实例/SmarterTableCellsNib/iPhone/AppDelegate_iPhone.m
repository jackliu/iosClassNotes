/***
 * Excerpted from "iOS Recipes",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/cdirec for more book information.
***/
//
//  AppDelegate_iPhone.m
//  SmarterTableCellsNib
//
//  Created by Matt Drance on 8/10/10.
//  Copyright Bookhouse Software, LLC 2010. All rights reserved.
//

#import "AppDelegate_iPhone.h"

@implementation AppDelegate_iPhone

@synthesize window;
@synthesize mainVC;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
	
    [self.window addSubview:self.mainVC.view];
    [self.window makeKeyAndVisible];
	
	return YES;
}

- (void)dealloc {
    [window release], mainVC = nil;
    [mainVC release], mainVC = nil;
    [super dealloc];
}


@end
