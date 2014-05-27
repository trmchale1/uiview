//
//  GTImageViewController.h
//  UIView
//
//  Created by Tim McHale on 5/27/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface GTImageViewController : UIViewController<UIGestureRecognizerDelegate>{
    UIImageView* imageView;
    NSArray *imageArray;
}

@property (nonatomic, retain) IBOutlet UIImageView* imageView;
@property (nonatomic, strong) NSArray *imageArray

@end
