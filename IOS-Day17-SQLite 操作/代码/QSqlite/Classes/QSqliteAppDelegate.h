//
//  QSqliteAppDelegate.h
//  QSqlite
//
//  Created by LDCI on 11-1-24.
//  Copyright 2011 ldci. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "LiteEngine.h"

@interface QSqliteAppDelegate : NSObject <UIApplicationDelegate>
{
    UIWindow *window;

    UITextField *edtName;
    UITextField *edtAge;
    UITextField *edtAddr;
    UITextField *edtSex;

    UIButton	*btnSave;
    UIButton	*btnRead;

    UITextView	*txtView;

    LiteEngine	*liteDB;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITextField     *edtName;
@property (nonatomic, retain) IBOutlet UITextField     *edtAge;
@property (nonatomic, retain) IBOutlet UITextField     *edtAddr;
@property (nonatomic, retain) IBOutlet UITextField     *edtSex;
@property (nonatomic, retain) IBOutlet UIButton		*btnSave;
@property (nonatomic, retain) IBOutlet UIButton		*btnRead;
@property (nonatomic, retain) IBOutlet UITextView	*txtView;

- (IBAction)btnClickedRead:(id)sender;
- (IBAction)btnClickedSave:(id)sender;

@end

