//
//  MBFViewController.m
//  Man's Best Friend
//
//  Created by Soo Kiat Ter on 10/03/2014.
//  Copyright (c) 2014 Can Can Studio. All rights reserved.
//

#import "MBFViewController.h"
#import "MBFDog.h"  // import with " " instead of < > because header file is in local directory
#import "MBFPuppy.h"

@interface MBFViewController ()

@end

@implementation MBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Instantiate new dog object!
    // CLASS *OBJ_NAME = [[CLASS alloc] init]    alloca = allocate memory, init = initialise object!
    
    MBFDog *myDog = [[MBFDog alloc] init];
    
    myDog.name = @"Fido";
    myDog.breed = @"St.Bernard";
    myDog.age = 4;
    
    // Create SecondDog
    MBFDog *secondDog = [[MBFDog alloc] init];
    secondDog.name = @"Milo";
    secondDog.breed = @"Jack Russell Terrier";
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    
    // Create ThirdDog
    MBFDog *thirdDog = [[MBFDog alloc] init];
    thirdDog.name = @"Lessie";
    thirdDog.breed = @"Border Collie";
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    // Create FourthDog
    MBFDog *fourthDog = [[MBFDog alloc] init];
    fourthDog.name = @"RunForestRun";
    fourthDog.breed = @"Italian Grey Hound";
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];

    self.myDogs = [[NSMutableArray alloc] init]; // MUST ALLOCATE MEMORY before use!
    [self.myDogs addObject: myDog];
    [self.myDogs addObject: secondDog];
    [self.myDogs addObject: thirdDog];
    [self.myDogs addObject: fourthDog];
    
    // Initialise Index Tracker before bar button item is pressed
    self.indexTracker = 9999;
    
    
    
    
//    NSLog(@"%@", self.myDogs);
    
    //NSLog(@"My dog is a %@ named %@ and its age is %i.", myDog.breed, myDog.name, myDog.age);
    
    // myDog = nil; // CANCEL all values for Class Properties
    
    // Calling METHODS of a Class: [OBJ_NAME CLASS_METHOD: INPUT_VALUE] 
    
//    [myDog bark];
//    [myDog barkANumberOfTimes: 3];
//    NSLog(@"%@", myDog.breed);
//    
//    [myDog changeBreedToWerewolf];
//    NSLog(@"%@", myDog.breed);
    
    //[self printHelloWorld];
    
//    [myDog barkANumberOfTimes:2 loudly:YES];
//    
//    int dogYears = [myDog ageInDogYears:myDog.age];
//    NSLog(@"My dog's dog-age is %i!", dogYears);
    
    
    
    myDog.image = [UIImage imageNamed:@"St.Bernard.jpg"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    
    MBFPuppy *littlePuppy = [[MBFPuppy alloc] init];
    
    [littlePuppy givePuppyEyes];
    [littlePuppy bark];
    
    littlePuppy.name = @"Lil Pup";
    littlePuppy.breed = @"Pomeranian";
    littlePuppy.image = [UIImage imageNamed:@"Bo.jpg"];
    
    [self.myDogs addObject:littlePuppy];
    
    
    
}


- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender
{
    long numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;  //arc4random = random number generator
    
    while (randomIndex == self.indexTracker)
    {
        randomIndex = arc4random() % numberOfDogs;  // Random new index till it is different from previous
    }

    MBFDog *randomDog = [self.myDogs objectAtIndex:randomIndex];

    self.indexTracker = randomIndex; // update index tracker
    
    // Update UI
//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
    
    [UIView transitionWithView:self.view duration:0.15 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.nameLabel.text = randomDog.name;
        self.breedLabel.text = randomDog.breed;
        
    } completion:^(BOOL finished) {}];
    
    
    sender.title = @"And Another!";  //Change text of the button
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)printHelloWorld
{
    NSLog(@"HELLO WORLD!!!");
}

@end

