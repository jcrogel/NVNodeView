//
//  NVAppDelegate.m
//  NodeView
//
//  Created by Juan Carlos Moreno on 4/2/14.
//  Copyright (c) 2014 Juan Carlos Moreno. All rights reserved.
//

#import "NVAppDelegate.h"

@implementation NVAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
}

- (IBAction)addNode:(id)sender {
    [[self NodeCanvas] addNamedNVNode:@"newnode"];
}
@end
