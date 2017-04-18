//
//  ViewController.m
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/17/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "ViewControllerDataSource.h"
#import "NSString+ArrayFromStringAndReversal.h"
#import "EmployeeDatabase.m"
#import "Employee.h"



@interface ViewController () <ViewControllerDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Employee *mike = [[Employee alloc]initWithFirstName:@"Mike" lastName: @"Miksch" age:@37 yearsEmployed:@1 andManagerName:@"Monica"];
    
    Employee *ben = [[Employee alloc]initWithFirstName:@"Ben" lastName:@"Riceman" age:@30 yearsEmployed:@2 andManagerName:@"Janet"];
    
    Employee *missy = [[Employee alloc]initWithFirstName:@"Missy" lastName:@"Tidd" age:@36 yearsEmployed:@5 andManagerName:@"Todd"];
    
    Employee *candy = [[Employee alloc]initWithFirstName:@"Candy" lastName:@"Dawson" age:@40 yearsEmployed:@3 andManagerName:@"Jimbob"];
    
    Employee *tyler = [[Employee alloc]initWithFirstName:@"Tyler" lastName:@"Durden" age:@30 yearsEmployed:@5 andManagerName:@"Richard"];
    
    
        
}

- (void)requiredNumberForEachItem:(int)number {
    
}


@end
