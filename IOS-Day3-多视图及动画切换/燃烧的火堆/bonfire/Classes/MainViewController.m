//
//  MainViewController.m
//  Bonfire
//
//  Created by apple on 10/2/08.
//  Copyright Amuck LLC 2008. All rights reserved.
//

#import "MainViewController.h"
#import "MainView.h"

@implementation MainViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
	}
	return self;
}

 - (void)viewDidLoad {
	 
	 // create the view that will execute our animation
	 UIImageView* campFireView = [[UIImageView alloc] initWithFrame:self.view.frame];
	 
	 // load all the frames of our animation
	 campFireView.animationImages = [NSArray arrayWithObjects:	
								 [UIImage imageNamed:@"campFire01.gif"],
								 [UIImage imageNamed:@"campFire02.gif"],
								 [UIImage imageNamed:@"campFire03.gif"],
								 [UIImage imageNamed:@"campFire04.gif"],
								 [UIImage imageNamed:@"campFire05.gif"],
								 [UIImage imageNamed:@"campFire06.gif"],
								 [UIImage imageNamed:@"campFire07.gif"],
								 [UIImage imageNamed:@"campFire08.gif"],
								 [UIImage imageNamed:@"campFire09.gif"],
								 [UIImage imageNamed:@"campFire10.gif"],
								 [UIImage imageNamed:@"campFire11.gif"],
								 [UIImage imageNamed:@"campFire12.gif"],
								 [UIImage imageNamed:@"campFire13.gif"],
								 [UIImage imageNamed:@"campFire14.gif"],
								 [UIImage imageNamed:@"campFire15.gif"],
								 [UIImage imageNamed:@"campFire16.gif"],
								 [UIImage imageNamed:@"campFire17.gif"], nil];
	 
	 // all frames will execute in 1.75 seconds
	 campFireView.animationDuration = 1.75;
	 // repeat the annimation forever
	 campFireView.animationRepeatCount = 0;
	 // start animating
	 [campFireView startAnimating];
	 // add the animation view to the main window 
	 [self.view addSubview:campFireView];
	 [campFireView release]; 
	
 }

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
	// Release anything that's not essential, such as cached data
}


- (void)dealloc {
	[super dealloc];
}


@end
