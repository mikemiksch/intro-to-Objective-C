//
//  Employee.m
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/17/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import "Employee.h"

@implementation Employee

NSString *_managerName;
int *_yearsEmployed;
int *_employeeNumber;

//Getters
-(NSString *)managerName {
    return _managerName;
}

-(int *)yearsEmployed {
    return _yearsEmployed;
}

-(int *)employeeNumber {
    return _employeeNumber;
}

//Senders
-(void)setManagerName:(NSString *)managerName {
    _managerName = managerName;
}

-(void)setEmployeeNumber:(int *)employeeNumber {
    _employeeNumber = employeeNumber;
}

-(void)setYearsEmployed:(int *)yearsEmployed {
    _yearsEmployed = yearsEmployed;
}


@end
