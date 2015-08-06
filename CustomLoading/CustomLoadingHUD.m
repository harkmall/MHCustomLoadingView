//
//  CustomLoadingHUD.m
//  CustomLoading
//
//  Created by Mark Hall on 2015-08-06.
//  Copyright (c) 2015 Mark Hall. All rights reserved.
//

#import "CustomLoadingHUD.h"

@interface CustomLoadingHUD()

@property (nonatomic, strong) UIView *bgView;
@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation CustomLoadingHUD

+ (instancetype)sharedInstance {
	static CustomLoadingHUD *_sharedInstance = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		_sharedInstance = [[CustomLoadingHUD alloc] init];
	});
	
	return _sharedInstance;
}

- (instancetype)init
{
	self = [super init];
	if (self){
		_bgView = [[UIView alloc]init];
		_imageView = [[UIImageView alloc]init];
		_imageView.contentMode = UIViewContentModeCenter;
	}
	return self;
}

- (void)showInView:(UIView *)view withImage:(UIImage *)image andBackgroundColor:(UIColor *)backgroundColor;
{
	self.bgView.frame = view.frame;
    self.bgView.backgroundColor = backgroundColor;
	
	[self.imageView setImage:image];
	self.imageView.center = view.center;
	
	[self.bgView addSubview:self.imageView];
	[self startAnimatingInView:view];
}

- (void)startAnimatingInView:(UIView *)view
{
	[view addSubview:self.bgView];
	CABasicAnimation *rotation;
	rotation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
	rotation.fromValue = [NSNumber numberWithFloat:0];
	rotation.toValue = [NSNumber numberWithFloat:(2 * M_PI)];
	rotation.duration = 0.7f; // Speed
	rotation.repeatCount = HUGE_VALF; // Repeat forever. Can be a finite number.
	[self.imageView.layer removeAllAnimations];
	[self.imageView.layer addAnimation:rotation forKey:@"Spin"];
}

- (void)stopAnimating
{
	[self.imageView.layer removeAllAnimations];
	[self.bgView removeFromSuperview];
}

@end
