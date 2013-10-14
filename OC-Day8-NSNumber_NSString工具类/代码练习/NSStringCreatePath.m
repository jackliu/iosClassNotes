NSString* pathToApp      = @"/Applications/Safari.app";
NSString* fullFileName   = [pathToApp lastPathComponent];
NSString* fileName       = [fullFileName stringByDeletingPathExtension];

if ( [pathToApp isAbsolutePath] ) {
  NSLog(@"The application's path is absolute.");
}

NSLog(@"pathToApp: %@", pathToApp);
NSLog(@"fullFileName: %@", fullFileName);
NSLog(@"fileName: %@", fileName);