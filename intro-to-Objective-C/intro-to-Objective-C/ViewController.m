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
    
    Employee *original = [[Employee alloc]initWithFirstName:@"Mike" lastName: @"Miksch" age:@37 yearsEmployed:@1 andManagerName:@"Monica"];
        
}

- (void)requiredNumberForEachItem:(int)number {
    
}


@end
