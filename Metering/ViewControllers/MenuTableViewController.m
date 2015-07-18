//
//  MenuTableViewController.m
//  Metering
//
//  Created by Sandra Guzmán Bautista on 17/07/15.
//  Copyright (c) 2015 onikom. All rights reserved.
//

#import "MenuTableViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "MainNavigationController.h"
#import "RoundImageView.h"


@interface MenuTableViewController ()

@end

@implementation MenuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.tableHeaderView = ({
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 184.0f)];
        RoundImageView *imageView = [RoundImageView roundedImageViewWithImage:[UIImage imageNamed:@"PhotoProfile"]];
        imageView.frame = CGRectMake(0, 40, 100, 100);
        imageView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 150, 0, 24)];
        label.text = @"Roman Efimov";
        label.font = [UIFont fontWithName:@"HelveticaNeue" size:21];
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor colorWithRed:62/255.0f green:68/255.0f blue:75/255.0f alpha:1.0f];
        [label sizeToFit];
        label.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        
        [view addSubview:imageView];
        [view addSubview:label];
        view;
    });
}


#pragma mark UITableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    MainNavigationController *navigationController = [self.storyboard instantiateViewControllerWithIdentifier:@"content"];
    
    if (indexPath.section == 0 && indexPath.row == 0) {
        FirstViewController *homeViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"first"];
        navigationController.viewControllers = @[homeViewController];
    } else {
        SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
        navigationController.viewControllers = @[secondViewController];
    }
    
    self.frostedViewController.contentViewController = navigationController;
    [self.frostedViewController hideMenuViewController];
}


#pragma mark UITableView Datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex {
    return [self.sections count];
}

@end
