//
//  ViewController.h
//  Metering
//
//  Created by Sandra Guzmán Bautista on 17/07/15.
//  Copyright (c) 2015 onikom. All rights reserved.
//

@interface LoginViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *user;
@property (weak, nonatomic) IBOutlet UITextField *password;

- (IBAction)loginUser:(id)sender;
- (IBAction)hideKeyboard:(id)sender;




@end

