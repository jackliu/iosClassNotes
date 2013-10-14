NSNumber* secondsInDay  = [NSNumber numberWithInt:(60 * 60 * 24)];
NSNumber* scaleFactor   = [NSNumber numberWithFloat:0.865];
NSNumber* enableExtras  = [NSNumber numberWithBool:YES];

NSLog (@"secondsInDay: %@ as int:   %i", secondsInDay, secondsInDay.intValue);
NSLog (@"scaleFactor:  %@ as float: %f", scaleFactor,  scaleFactor.floatValue);
NSLog (@"enableExtras: %@ as BOOL:  %i", enableExtras, enableExtras.boolValue);