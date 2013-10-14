NSString* firstCity  = @"Cupertino";
NSString* secondCity = @"Cupertino";

if ( firstCity == secondCity ) {
	NSLog (@"The cities are the same");
} else {
	NSLog (@"The cities are not the same");
}

NSLog (@"firstCity  string: '%@' pointer: %p", firstCity, firstCity);
NSLog (@"secondCity string: '%@' pointer: %p", secondCity, secondCity);