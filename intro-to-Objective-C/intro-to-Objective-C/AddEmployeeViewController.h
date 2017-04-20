//
//  AddEmployeeViewController.h
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/19/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface AddEmployeeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *firstNameField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameField;
@property (weak, nonatomic) IBOutlet UITextField *managerNameField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *ageField;
@property (weak, nonatomic) IBOutlet UITextField *yearsEmployedField;

@property (nonatomic, strong) ViewController *viewController;

- (IBAction)addEmployeeButtonPressed:(id)sender;
- (IBAction)cancelButtonPressed:(id)sender;

@end
