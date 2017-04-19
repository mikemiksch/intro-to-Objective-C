//
//  AddEmployeeViewController.m
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/19/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import "AddEmployeeViewController.h"

@interface AddEmployeeViewController ()

@end

@implementation AddEmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)addEmployeeButtonPressed:(id)sender {
    NSNumber *ageInteger = [NSNumber numberWithInteger: [_ageField.text integerValue]];
    NSNumber *yearsInteger = [NSNumber numberWithInteger: [_yearsEmployedField.text integerValue]];
    Employee *newEmployee = [[Employee alloc]initWithFirstName:_firstNameField.text lastName:_lastNameField.text age:ageInteger yearsEmployed:yearsInteger managerName:_managerNameField.text andEmail:_emailField.text];
    [EmployeeDatabase.shared add:newEmployee];
    NSLog(@"Add employee button pressed!");
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancelButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
