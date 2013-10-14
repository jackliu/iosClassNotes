NSString* lastLine = @"Beauty is truth, truth beauty";
NSString* fileName = @"GrecianUrn.txt";
NSString* homeDir  = NSHomeDirectory();
NSString* fullPath = [homeDir stringByAppendingPathComponent:fileName];

[lastLine writeToFile:fullPath atomically:NO];