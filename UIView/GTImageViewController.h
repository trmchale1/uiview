//
//  GTImageViewController.h
//  UIView
//
//  Created by Tim McHale on 5/26/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GTImageViewController : UIViewController<UIGestureRecognizerDelegate>{
    UIImageView* imageView;
}

@property (nonatomic, retain) IBOutlet UIImageView* imageView;

//- (IBAction)swipe:(UISwipeGestureRecognizer *)sender;

@end
