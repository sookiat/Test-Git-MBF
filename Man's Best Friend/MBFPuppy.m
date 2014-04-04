//
//  MBFPuppy.m
//  Man's Best Friend
//
//  Created by Soo Kiat Ter on 16/03/2014.
//  Copyright (c) 2014 Can Can Studio. All rights reserved.
//

#import "MBFPuppy.h"

@implementation MBFPuppy

-(void) givePuppyEyes
{
    NSLog(@"@_@");
}

-(void) bark            // Bark for MBFPuppy
{
    [super bark];     // Use the bark for MBFDog class
    NSLog(@"Whine whine~");
    [self givePuppyEyes ];
}


@end
