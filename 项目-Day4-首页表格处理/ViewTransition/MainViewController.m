/***
 * Excerpted from "iOS Recipes",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/cdirec for more book information.
***/
//
//  MainViewController.m
//  OpeningTransition
//
//  Created by Paul Warren on 9/18/10.
//  Copyright 2010 Primitive Dog Software. All rights reserved.
//

#import "MainViewController.h"


@implementation MainViewController

@synthesize currentView;

- (void)dealloc {
    
    [super dealloc];
    [currentView release]; currentView=nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.currentView = [[UIImageView alloc] initWithImage:
                                    [UIImage imageNamed:@"Default.png"]];
    [self.view addSubview:self.currentView];
    self.currentView.frame = self.view.bounds;
    self.currentView.userInteractionEnabled = YES;
    [self.currentView release];
        

    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] 
                            initWithTarget:self action:@selector(swiped:)];
    [self.view addGestureRecognizer:swipe];
    swipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipe release];
}

- (void)swiped:(UISwipeGestureRecognizer *)sender {
    NSString *splashImage;
    loop++;
    switch (loop) {
        case 1:
            splashImage = @"settings.png";
            break;
        case 2:
            splashImage = @"BackImage.jpg";
            break;
        default:
            splashImage = @"Default.png";
            loop = 0;
            break;
    } 
    UIImageView *newView = [[UIImageView alloc] initWithImage:
                                    [UIImage imageNamed:splashImage]];
    newView.userInteractionEnabled = YES;
    newView.frame = self.view.bounds;
    [self.view addSubview:newView];
    PRPViewTransition *transView = [PRPViewTransition 
                                    viewWithView:self.currentView 
                                    splitInto:4];
    transView.duration = 0.8;
    [self.view addSubview:transView];
    [self.currentView removeFromSuperview];
    self.currentView = newView;
    [newView release];        
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}



@end

