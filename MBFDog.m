//
//  MBFDog.m
//  Man's Best Friend
//
//  Created by Soo Kiat Ter on 10/03/2014.
//  Copyright (c) 2014 Can Can Studio. All rights reserved.
//

#import "MBFDog.h"

@implementation MBFDog

-(void)bark
{
    NSLog(@"WOOF WOOF!!!!!");
}

-(void)barkANumberOfTimes: (int)numberOfTimes //-(RETURN_TYPE)METHOD_NAME: (INPUT_TYPE)INPUT_NAME
{
    for (int bark=1; bark <= numberOfTimes; bark++)
    {
        [self bark];
    }
}

-(void)changeBreedToWerewolf
{
    self.breed = @"WEREWOLF";
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud //Multiple arguments
{
    if (!isLoud)
    {
        for (int bark=1;bark<=numberOfTimes;bark++)
        {
            NSLog(@"yip yip");
        }
    
    }
    
    else
    {
        for (int bark=1; bark<=numberOfTimes; bark++)
        {
            NSLog(@"RUff RUFF!");
        }
    }
}

-(int)ageInDogYears: (int)humanAge
{
    int dogAge = humanAge * 7;
    
    return dogAge;
}

@end
