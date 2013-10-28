//
//  MyController.h
//  NotificationCenter
//
//  Created by mei xun on 11-5-18.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MyController : UIViewController {
	UITextField *tf1;
	UITextField *tf2;

}

@property (nonatomic,retain) IBOutlet UITextField *tf1;
@property (nonatomic,retain) IBOutlet UITextField *tf2;
-(void)clickBtn:(id)sender;
@end
