//
//  Employee.m
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/17/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import "Employee.h"

@implementation Employee

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                   yearsEmployed:(NSNumber *)yearsEmployed
                  andManagerName:(NSString *)managerName {
    self = [super initWithFirstName:firstName lastName:lastName andAge:age];
    
    if (self) {
        _yearsEmployed = yearsEmployed;
        _managerName = managerName;
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];
        _email = @"%@%@@email.com", firstName, lastName;
    }
    
    return self;
}

-(id)copyWithZone:(NSZone *)zone{
    
    Employee *employee = [super copyWithZone:zone];
    employee.managerName = self.managerName;
    employee.employeeNumber = self.employeeNumber;
    employee.yearsEmployed = self.yearsEmployed;
    employee.email = self.email;
    
    return employee;
}

//NSString *_managerName;
//NSNumber *_yearsEmployed;
//NSNumber *_employeeNumber;
//
////Getters
//-(NSString *)managerName {
//    return _managerName;
//}
//
//-(NSNumber *)yearsEmployed {
//    return _yearsEmployed;
//}
//
//-(NSNumber *)employeeNumber {
//    return _employeeNumber;
//}
//
////Setters
//-(void)setManagerName:(NSString *)managerName {
//    _managerName = managerName;
//}
//
//-(void)setEmployeeNumber:(NSNumber *)employeeNumber {
//    _employeeNumber = employeeNumber;
//}
//
//-(void)setYearsEmployed:(NSNumber *)yearsEmployed {
//    _yearsEmployed = yearsEmployed;
//}


@end
