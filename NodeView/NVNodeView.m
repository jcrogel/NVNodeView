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
    [[self layer] setBorderColor:[NSColor blackColor].CGColor];
    [[self layer] setBackgroundColor:[NSColor grayColor].CGColor];
}

- (void)drawRect:(NSRect)dirtyRect
{
    [super drawRect:dirtyRect];

    NSLog(@"%@", NSStringFromRect(dirtyRect));
    // Drawing code here.
}

@end
