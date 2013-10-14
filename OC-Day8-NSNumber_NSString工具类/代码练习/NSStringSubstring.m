NSString* fullName  = @"Albert Einstein";
NSRange   myRange   = NSMakeRange ( 0, 6 );

NSString* firstName = [fullName substringWithRange: myRange];
NSLog (@"firstName: %@", firstName);