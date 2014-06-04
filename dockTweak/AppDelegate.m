//
//  AppDelegate.m
//  dockTweak
//
//  Created by To Kin Hang on 2/6/14.
//  Copyright (c) 2014 To Kin Hang. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
	
}

- (IBAction)dockTweak:(id)sender {
	NSTask *task = [[NSTask alloc] init];
	NSString *pos = [[NSString alloc] init];
	if([sender tag] == 0){
		pos = @"start";
	}else if([sender tag] ==2){
		pos = @"end";
	}else{
		pos = @"middle";
	}
	[task setLaunchPath: @"/usr/bin/defaults"];

	
	[task setArguments:@[@"write",@"com.apple.dock",@"pinning",@"-string",pos ]];
	[task launch];
	
	NSTask *killDock = [[NSTask alloc] init];
	[killDock setLaunchPath:@"/bin/bash"];
	[killDock setArguments:@[ @"-c", @"/usr/bin/killall Dock" ]];
	[killDock launch];
}



@end
