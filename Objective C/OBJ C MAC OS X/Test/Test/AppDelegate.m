//
//  AppDelegate.m
//  Test
//
//  Created by Flavio Sinatra on 21/04/23.
//  Copyright (c) 2023 Flavio Sinatra. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (weak) IBOutlet NSTextField *FirstNumberLabel;
@property (weak) IBOutlet NSTextField *SecondNumberLabel;
@property (weak) IBOutlet NSTextField *ResultStringLabel;
@property (weak) IBOutlet NSTextField *Outputresult;
@property (weak) IBOutlet NSTextField *Fntextfield;
@property (weak) IBOutlet NSTextField *Sntextfield;
@property (weak) IBOutlet NSButton *Calculatebutton;

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate



int getsum (int fn, int sn)
{
    return fn + sn;
}


- (IBAction)onclickcalc:(id)sender {
    
    
    int fn = self.Fntextfield.integerValue;
    int sn = self.Sntextfield.integerValue;
    
    self.Outputresult.integerValue = getsum(fn, sn);
    
    
    
    
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
