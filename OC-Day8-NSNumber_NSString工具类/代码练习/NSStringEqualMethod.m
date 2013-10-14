NSString* firstString  = [NSString stringWithFormat:@"%i", 10000];
NSString* secondString = [NSString stringWithFormat:@"%i", 10000];

if ( [firstString isEqualToString:secondString] ) {
	NSLog (@"The strings are the same");
} else {
	NSLog (@"The strings are not the same");
}