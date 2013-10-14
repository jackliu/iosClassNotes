int   count    = 100;
float piValue  = 3.1415926;
char* starName = "Vega";

NSString* countString    = [NSString stringWithFormat:@"%i",count];
NSString* piString       = [NSString stringWithFormat:@"%f", piValue];
NSString* starNameString = [NSString stringWithUTF8String:starName];