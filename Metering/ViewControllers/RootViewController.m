//
//  RootViewController.m
//  Metering
//
//  Created by Sandra Guzmán Bautista on 17/07/15.
//  Copyright (c) 2015 onikom. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)awakeFromNib {
    self.contentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"content"];
    self.menuViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"menu"];
}


@end
