//
//  Employee.h
//  intro-to-Objective-C
//
//  Created by Mike Miksch on 4/17/17.
//  Copyright © 2017 Mike Miksch. All rights reserved.
//

#import "Person.h"

@interface Employee : Person <NSCopying, NSCoding>

@property(strong, nonatomic) NSString *managerName;
@property(strong, nonatomic) NSNumber *employeeNumber;
@property(strong, nonatomic) NSNumber *yearsEmployed;
@property(strong, nonatomic) NSString *email;

-(instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName age:(NSNumber *)age yearsEmployed:(NSNumber *)yearsEmployed managerName:(NSString *)managerName andEmail:(NSString *)email;


////Getters
//-(NSString *)managerName;
//
//-(NSNumber *)yearsEmployed;
//
//-(NSNumber *)employeeNumber;
//
////Setters
//-(void)setManagerName:(NSString *)managerName;
//
//-(void)setEmployeeNumber:(NSNumber *)employeeNumber;
//
//-(void)setYearsEmployed:(NSNumber *)yearsEmployed;

@end
