//
//  NotificationCenterViewController.h
//  NotificationCenter
//
//  Created by mei xun on 11-5-18.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyController;
@interface NotificationCenterViewController : UIViewController {
	UIButton *myButton;
	UITextField *myTextField;
	MyController *myController;

}
@property (nonatomic,retain)IBOutlet UIButton *myButton;
@property (nonatomic,retain)IBOutlet UITextField *myTextField;
@property (nonatomic,retain)IBOutlet MyController *myController;

-(IBAction)clickBtn:(id)sender;
@end

