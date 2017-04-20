//
//  EmployeeDetailViewController.m
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/20/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import "EmployeeDetailViewController.h"

@interface EmployeeDetailViewController ()

@end

@implementation EmployeeDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.firstNameLabel.text = [NSString stringWithFormat: @"First Name: %@", [_selectedEmployee firstName]];
    self.lastNameLabel.text = [NSString stringWithFormat: @"Last Name: %@", [_selectedEmployee lastName]];
    self.managerNameLabel.text = [NSString stringWithFormat: @"Manager: %@", [_selectedEmployee managerName]];
    self.emailLabel.text = [NSString stringWithFormat: @"Email: %@", [_selectedEmployee email]];
    self.ageLabel.text = [NSString stringWithFormat:@"%@ years old.", [_selectedEmployee age]];
    self.yearsEmployedLabel.text = [NSString stringWithFormat:@"Employed for %@ years.", [_selectedEmployee yearsEmployed]];
}

@end
