//
//  AppDelegate.m
//  TeacherApplication
//
//  Created by Curtis Mason on 12/27/15.
//  Copyright © 2015 Curtis Mason. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (weak) IBOutlet NSWindow *login;

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
 //code here to initialize your application
    
}
- (IBAction)SpawnWidget:(id)sender {
    NSTask *WidgetSpawn = [[NSTask alloc] init];
    WidgetSpawn.launchPath = @"/usr/bin/open";
    WidgetSpawn.currentDirectoryPath = @"/Users/CurtisMason/Library/Developer/Xcode/DerivedData/EconWidget-degzlpdnpncqthcibbhdemjmynjv/Build/Products/Debug";
    WidgetSpawn.arguments = @[@"-a", @"EconWidget"];
    //    WidgetSpawn.standardOutput = pipe;
    [WidgetSpawn launch];
       // Insert
}
-(IBAction)KillWidget:(id)sender{
    //system("killall EconWidget");
    NSTask *WidgetKill = [[NSTask alloc] init];
    WidgetKill.launchPath =@"/usr/bin/killall";
    WidgetKill.arguments = @[@"EconWidget"];
    [WidgetKill launch];
    [_window close];
   // [_login makeKeyAndOrderFront:self];

}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
        // Insert code here to tear down your application
}

@end
