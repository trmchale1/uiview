//
//  GTAppDelegate.m
//  UIView
//
//  Created by Tim McHale on 5/26/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import "GTAppDelegate.h"
#import "GTViewController.h"

@implementation GTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    GTViewController *gtViewController =
    
    [[GTViewController alloc] init];
    
    
    // Create an instance of a UINavigationController
    // its stack contains only itemsViewController
    UINavigationController *navController = [[UINavigationController alloc]
                                             initWithRootViewController:gtViewController];
    
    
    // Place navigation controller's view in the window hierarchy
    self.window.rootViewController = navController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
