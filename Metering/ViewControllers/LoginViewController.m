//
//  ViewController.m
//  Metering
//
//  Created by Sandra Guzmán Bautista on 17/07/15.
//  Copyright (c) 2015 onikom. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}


#pragma mark - TextField Delegate Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSInteger nextTag = textField.tag + 1;
    UIResponder* nextResponder = [textField.superview viewWithTag:nextTag];
    
    if (nextResponder) {
        [nextResponder becomeFirstResponder];
    } else {
        [textField resignFirstResponder];
    }
    
    return NO;
}


#pragma mark - IBAction  Methods

- (IBAction)loginUser:(id)sender {
    NSString *user = [Utility trimString:self.user.text];
    NSString *password = [Utility trimString:self.password.text];
    
    if ([password length] != 0 && [user length] != 0 && [Utility validateEmail:user]) {
        [self performSegueWithIdentifier:@"loginToRoot" sender:self];
    } else {
        [Utility showAlertWithText:@"llenar datos correctamente" andTitle:@"Aviso"];
    }
}

- (IBAction)hideKeyboard:(id)sender {
    [self.user resignFirstResponder];
    [self.password resignFirstResponder];
}


#pragma mark - UIInterfaceOrientation Methods

- (BOOL)shouldAutorotate {
    return YES;
}


- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}


- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationPortrait;
}

@end
