//
//  ViewController.m
//  CustomLoading
//
//  Created by Mark Hall on 2015-08-06.
//  Copyright (c) 2015 Mark Hall. All rights reserved.
//

#import "ViewController.h"
#import "CustomLoadingHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    [[CustomLoadingHUD sharedInstance] showInView:self.view withImage:[UIImage imageNamed:@"128"] andBackgroundColor:[UIColor colorWithWhite:0 alpha:0.7]];
	
	[self performSelector:@selector(endAnimation) withObject:nil afterDelay:3.0];
}

- (void)endAnimation
{
	[[CustomLoadingHUD sharedInstance] stopAnimating];
}
- (IBAction)startAnimating:(id)sender
{
	[[CustomLoadingHUD sharedInstance] startAnimatingInView:self.view];
}

@end
