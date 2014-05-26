//
//  GTImageView.m
//  Screenshow
//
//  Created by Tim McHale on 5/19/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import "GTImageViewController.h"

@interface GTImageViewController ()

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
    [super viewDidLoad];
    
    NSArray *imageArray = [[NSArray alloc] initWithObjects:[UIImage imageNamed:@"workExample.jpg"], nil];
    
    
    
   
    NSLog(@"imageView.animationImages %@", imageView.animationImages[0]);
    imageView.animationImages = imageArray;
    imageView.animationDuration = 2;
    
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
