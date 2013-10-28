//
//  NotificationCenterViewController.m
//  NotificationCenter
//
//  Created by mei xun on 11-5-18.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NotificationCenterViewController.h"
#import "MyController.h"

@implementation NotificationCenterViewController
@synthesize myButton,myTextField,myController;


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

-(IBAction)clickBtn:(id)sender
{
	[self presentModalViewController:myController animated:YES];
    
    //创建一个消息中心,消息的名字是 clickBtn,消息内容 myTextField.text
    //userInfo  也是指要传递的一部分数据  [NSDictionary dictionaryWithObject:myTextField.text forKey:@"name"]
	[[NSNotificationCenter defaultCenter] postNotificationName:@"clickBtn" 
														object:myTextField.text
													  userInfo:[NSDictionary dictionaryWithObject:myTextField.text forKey:@"name"]];
	
}

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
