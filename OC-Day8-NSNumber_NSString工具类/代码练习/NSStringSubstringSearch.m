NSString* fullName    = @"Last name: Einstein";
NSRange   fieldRange = [fullName rangeOfString:@"Last name: "];

if ( fieldRange.length > 0 ) {
	
	int start  = fieldRange.location;
	int count  = fieldRange.length;
	
	int startOfName = start + count;	
	NSString* lastName = [fullName substringFromIndex: startOfName];
	NSLog (@"lastName: %@", lastName);
}