//
//  NVNodeContainer.m
//  NodeView
//
//  Created by Juan Carlos Moreno on 4/2/14.
//  Copyright (c) 2014 Juan Carlos Moreno. All rights reserved.
//

#import "NVNodeViewCanvas.h"

@implementation NVNodeViewCanvas

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
        [self commonInit];
    }
    
    return self;
}


- (id) initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self commonInit];
    }
    return self;
}

-(void) commonInit
{
    self.nodes = [[NSDictionary alloc] init];
    [[self layer] setBackgroundColor:[NSColor redColor].CGColor];
    [self setAlphaValue:1.0];
    [self setHidden:NO];
    [self setWantsLayer:YES];
    
    NSLog(@"Setting red");
}

- (void)drawRect:(NSRect)dirtyRect
{
    NSLog(@"NodeCanvas %@", NSStringFromRect(dirtyRect));
    [super drawRect:dirtyRect];
    // Drawing code here.
}

-(void) addNamedNVNode:(NSString *)newName
{
    id node = [[self nodes] objectForKey:newName];
    int suffix = 1;
    NSString *nameCandidate = newName;
    while(node)
    {
        nameCandidate = [NSString stringWithFormat:@"%@-%d", newName, suffix];
        node = [[self nodes] objectForKey:nameCandidate];
        suffix +=1;
    }
    newName = nameCandidate;
    

    CGRect rect = CGRectMake(self.frame.size.width/2, self.frame.size.width/2, 100, 100);
    NVNodeView* nodeObj = [[NVNodeView alloc] initWithFrame:NSRectFromCGRect(rect)];
    NSMutableDictionary *nodeDict = [[self nodes] mutableCopy];
    [nodeDict setObject:nodeObj forKey:newName];
    self.nodes = nodeDict;
    [self addSubview:nodeObj];
}

@end
