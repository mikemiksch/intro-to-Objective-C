//
//  EmployeeDetailViewController.h
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/20/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface EmployeeDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *managerNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *yearsEmployedLabel;

@property (nonatomic, strong) Employee *selectedEmployee;

@end
