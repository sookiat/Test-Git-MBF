//
//  MBFViewController.h
//  Man's Best Friend
//
//  Created by Soo Kiat Ter on 10/03/2014.
//  Copyright (c) 2014 Can Can Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MBFViewController : UIViewController

- (void)printHelloWorld;

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender;

@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;
@property (nonatomic) int indexTracker;

@end
