//
//  AppDelegate.m
//  Objc Prova
//
//  Created by Flavio Sinatra on 30/04/23.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *n1txtfld;
@property (weak) IBOutlet NSTextField *n2txtfld;
@property (weak) IBOutlet NSTextField *restxtfld;
@property (weak) IBOutlet NSButton *calcbtn;

@end

@implementation AppDelegate









- (IBAction)calcbtnclick:(id)sender
{
   
    int a = _n2txtfld.intValue;
    int b = _n1txtfld.intValue;
    int res = a + b;
    
    _restxtfld.integerValue = res;
    
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end
