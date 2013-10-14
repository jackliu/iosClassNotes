// combining two strings.
NSString* firstName = @"Albert ";
NSString* lastName  = @"Einstein";
NSString* fullName  = [firstName stringByAppendingString:lastName];
NSLog( @"fullName: %@", fullName );

// combining multiple strings.
NSString* sentence = @"Welcome ";
sentence = [sentence stringByAppendingString:@"to the "];
sentence = [sentence stringByAppendingString:@"future."];
NSLog( @"sentence: %@", sentence );