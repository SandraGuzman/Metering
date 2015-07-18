//
//  Utility.h
//  Metering
//
//  Created by Sandra Guzmán Bautista on 17/07/15.
//  Copyright (c) 2015 onikom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Utility : NSObject

+ (BOOL)validateEmail:(NSString *)text;
+ (NSString *)trimString:(NSString *)string;
+ (void)showAlertWithText:(NSString *)message andTitle:(NSString *)title;

@end
