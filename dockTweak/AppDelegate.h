//
//  AppDelegate.h
//  dockTweak
//
//  Created by To Kin Hang on 2/6/14.
//  Copyright (c) 2014 To Kin Hang. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSButtonCell *left;
@property (weak) IBOutlet NSButton *mid;
@property (weak) IBOutlet NSButton *right;

@end
