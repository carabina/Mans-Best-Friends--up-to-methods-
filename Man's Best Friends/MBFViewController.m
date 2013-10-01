//
//  MBFViewController.m
//  Man's Best Friends
//
//  Created by Teddy Wyly on 9/10/13.
//  Copyright (c) 2013 Teddy Wyly. All rights reserved.
//

#import "MBFViewController.h"
#import "MBFDog.h" // Importing our MBFDog header file so that our ViewController knows about it
#import "MBFPuppy.h"

@interface MBFViewController ()

// Our UI Elements (Views)
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
@property (weak, nonatomic) IBOutlet UILabel *breedLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation MBFViewController

// A method that is automatically callled when the this ViewController's view loads, but has not appeared on screen yet
- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // How to create, or instantiate an object
    MBFDog *myDog = [[MBFDog alloc] init];
    
    // We are not setting the properties of our dog
    // This takes a generic dog from our Dog class and makes it more specific
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 9;
    myDog.picture = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    // We are now checking to see if the dog's properties were set
    // Run the program and look at the debug console to see your dog
    NSLog(@"My Dog is %@ and he is a %i year old %@!", myDog.name, myDog.age, myDog.breed);
    
    
    
    // Demonstartion of a method call on a dog
    [myDog barkANumberOfTimes:3 loudly:NO];
    
    
    
    // Setting our User Interface elements to match the properties on myDog
    self.myImageView.image = myDog.picture;
    self.breedLabel.text = myDog.breed;
    self.nameLabel.text = myDog.name;
    
    
}

// This is included by Apple and is called whenever there is a memory warning
// We do not need to "implement" it or write any code here
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
