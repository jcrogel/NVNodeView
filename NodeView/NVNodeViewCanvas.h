//
//  NVNodeContainer.h
//  NodeView
//
//  Created by Juan Carlos Moreno on 4/2/14.
//  Copyright (c) 2014 Juan Carlos Moreno. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "NVNodeView.h"
#import <Cocoa/Cocoa.h>

@interface NVNodeViewCanvas : NSView

@property (nonatomic) NSDictionary *nodes;

- (void) addNamedNVNode: (NSString *) name;

@end
