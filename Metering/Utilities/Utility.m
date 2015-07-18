//
//  Utility.m
//  Metering
//
//  Created by Sandra Guzmán Bautista on 17/07/15.
//  Copyright (c) 2015 onikom. All rights reserved.
//

#import "Utility.h"

@implementation Utility

+ (BOOL)validateEmail:(NSString *)text {
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    
    return [emailTest evaluateWithObject:text];
}

+ (NSString *)trimString:(NSString *)string {
    return [string stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
}

+ (void)showAlertWithText:(NSString *)message andTitle:(NSString *)title {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil];
    [alert show];
}

@end
