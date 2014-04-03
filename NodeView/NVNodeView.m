//
//  NVNodeView.m
//  NodeView
//
//  Created by Juan Carlos Moreno on 4/2/14.
//  Copyright (c) 2014 Juan Carlos Moreno. All rights reserved.
//

#import "NVNodeView.h"

@implementation NVNodeView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
        [self commonInit];
    }
    return self;
}

- (id)init
{
    self = [super init];
    if (self) {
        [self setFrame: NSRectFromCGRect(CGRectMake(0, 0, 100, 50))];
        [self commonInit];
    }
    return self;
}

-(void) commonInit
{
    [self setWantsLayer:YES];
    [[self layer] setBorderColor:[NSColor darkGrayColor].CGColor];
    [[self layer] setBorderWidth:1.0];
    [[self layer] setBackgroundColor:[NSColor lightGrayColor].CGColor];
    [[self layer] setCornerRadius:5];
}

- (void)drawRect:(NSRect)dirtyRect
{
    [super drawRect:dirtyRect];



    // Drawing code here.
}


-(void)mouseDown:(NSEvent *)event
{
    NSLog(@"Node Mouse Down");
}

-(void)mouseDragged:(NSEvent *)event
{
    NSLog(@"Node Mouse Drag");
}

-(void)mouseUp:(NSEvent *)event
{
    NSLog(@"Node Mouse Up");
}

@end
