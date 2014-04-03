//
//  NVAppDelegate.h
//  NodeView
//
//  Created by Juan Carlos Moreno on 4/2/14.
//  Copyright (c) 2014 Juan Carlos Moreno. All rights reserved.
//
#import <Cocoa/Cocoa.h>
#import "NVNodeViewCanvas.h"

@interface NVAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic) IBOutlet NSToolbar *toolbar;
@property (nonatomic) IBOutlet NSToolbarItem *addTBItem;
@property (weak) IBOutlet NVNodeViewCanvas *NodeCanvas;
- (IBAction)addNode:(id)sender;

@end
