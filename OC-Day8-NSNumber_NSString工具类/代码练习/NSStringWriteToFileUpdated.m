NSString* lastLine  = @"Beauty is truth, truth beauty";
NSString* fileName  = @"GrecianUrn.txt";
NSString* homeDir   = NSHomeDirectory();
NSString* fullPath  = [homeDir stringByAppendingPathComponent:fileName];

NSError* error = nil;
[lastLine writeToFile:fullPath atomically:NO encoding:NSASCIIStringEncoding error:&error];

if ( error != nil ) {
  [NSApp presentError:error];
}