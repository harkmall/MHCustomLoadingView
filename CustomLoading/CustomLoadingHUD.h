//
//  CustomLoadingHUD.h
//  CustomLoading
//
//  Created by Mark Hall on 2015-08-06.
//  Copyright (c) 2015 Mark Hall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIkit.h>

@interface CustomLoadingHUD : NSObject

+ (instancetype)sharedInstance;
- (void)showInView:(UIView *)view withImage:(UIImage *)image andBackgroundColor:(UIColor *)backgroundColor;
- (void)startAnimatingInView:(UIView *)view;
- (void)stopAnimating;

@end
