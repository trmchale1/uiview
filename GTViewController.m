//
//  GTViewController.m
//  UIView
//
//  Created by Tim McHale on 5/26/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import "GTViewController.h"
#import "GTImageViewController.h"
@interface GTViewController ()

@end

@implementation GTViewController
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UINavigationItem *navItem = self.navigationItem;
        navItem.title = @"Image Viewer";     }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)startScreenshow:(id)sender {
    
    GTImageViewController *gtImageView = [[GTImageViewController
                                           alloc] init];
    [self.navigationController pushViewController:gtImageView
                                         animated:YES];
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
