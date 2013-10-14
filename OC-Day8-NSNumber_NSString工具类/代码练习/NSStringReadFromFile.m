NSString* fileName  = @"GrecianUrn.txt";
NSString* homeDir   = NSHomeDirectory();
NSString* fullPath  = [homeDir stringByAppendingPathComponent:fileName];


NSError* error = nil;
NSStringEncoding encoding;

NSString* contents = [NSString stringWithContentsOfFile: fullPath
                                           usedEncoding: &encoding
                                                  error: &error];

if ( error != nil ) {
  [NSApp presentError:error];
}

NSLog(@"Contents of '%@': %@", fileName, contents);