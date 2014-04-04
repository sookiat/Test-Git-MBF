//
//  MBFDog.h
//  Man's Best Friend
//
//  Created by Soo Kiat Ter on 10/03/2014.
//  Copyright (c) 2014 Can Can Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBFDog : NSObject

// Declaring properties for Class in this format: @property (options) TYPE VAR_NAME;
@property (nonatomic) int age;                  // nonatomic, related to thread and stuff,
@property (nonatomic, strong) NSString *breed; // NSString is a class that represents strings
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) UIImage *image;  // UIImage is a class that represents pixels or images

-(void)bark;
-(void)barkANumberOfTimes:(int)numberOfTimes; //-(RETURN_TYPE)METHOD_NAME: (INPUT_TYPE)INPUT_NAME
-(void)changeBreedToWerewolf;
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud; //Multiple arguments

-(int)ageInDogYears: (int)humanAge; //function return values

@end
