    //
//  MyController.m
//  NotificationCenter
//
//  Created by mei xun on 11-5-18.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MyController.h"


@implementation MyController
@synthesize tf1,tf2;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    //注册一个消息中心，等待，无论何地View 中发生了 clickBtn 的事件，这边就可以指派 [self clickBtn]执行
	[[NSNotificationCenter defaultCenter] addObserver:self
											 selector:@selector(clickBtn:) 
												 name:@"clickBtn" 
											   object:nil];
}

//如果发生了注册名称的事件，这里如何执行
//参数  (id)sender ->(NSNotification)sender
-(void)clickBtn:(id)sender
{
	//取出消息中数据的两种方式
    //方式一：直接取值
    tf2.text=[sender object];
    //方式二：通过 userInfo 参数取值
	tf1.text=[[sender userInfo] objectForKey:@"name"];
	
	NSLog(@"clickBtn");
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
