//
//  GTImageView.m
//  Screenshow
//
//  Created by Tim McHale on 5/19/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import "GTImageViewController.h"

@interface GTImageViewController ()
@property (nonatomic, strong) NSArray *imageArray;
@end
@implementation GTImageViewController
@synthesize imageView;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}











- (void)viewDidLoad
{
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipe:)];
    
    swipe.numberOfTouchesRequired = 1;
    swipe.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [super viewDidLoad];
    
    self.imageArray = [[NSArray alloc] initWithObjects:[UIImage imageNamed:@"workExample.jpg"], [UIImage imageNamed:@"app1.png"],
                           [UIImage imageNamed:@"app2.png"], nil];
    imageView.animationImages = self.imageArray;
    imageView.animationDuration = 100;
    NSLog(@"imageView.animationImages %@", imageView.animationImages[0]);

  //  imageView.userInteractionEnabled = YES;
    
    [self.view addGestureRecognizer:swipe];
    [self.view addSubview:imageView];
    [imageView startAnimating];

}

- (IBAction)swipe:(UISwipeGestureRecognizer *)sender {
    
    NSLog(@"Screen was swiped");
    

    imageView.animationImages = self.imageArray;
 
    // We know that both the imageView and the imageArrays are global
    // need to find the current order of the array with nslog and implement
    // a series of if statements to get to the next position in the array
    
    
    
    
    // This is the animation duration you can turn it back on if uncommented
    //   imageView.animationDuration = 1;
    
    
    
    imageView.userInteractionEnabled = YES;
    
   
    
    // This is a way to access the next object at index, previous attempts have failed
//self.imageView = [imageArray objectAtIndex: 1];

    [self.view addSubview:imageView];

    [imageView startAnimating];
    
}








- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewDidUnload
{
    [super viewDidUnload];
}



@end
