NSNumber* secondsInDay = [NSNumber numberWithInt:86400];
NSNumberFormatter* formatter = [[NSNumberFormatter alloc] init];
[formatter setNumberStyle: NSNumberFormatterSpellOutStyle];

NSString* secondsAsString = [formatter stringFromNumber:secondsInDay];
NSLog ( @"Seconds in day (formatted): %@", secondsAsString );
[formatter release];